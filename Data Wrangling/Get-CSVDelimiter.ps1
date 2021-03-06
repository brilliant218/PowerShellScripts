<#
.SYNOPSIS
  Autodetects delimiter used in CSV files and number of rows
.DESCRIPTION
  Uses heuristics to determine the delimiter character used in a CSV file
.PARAMETER Path
  Path name to CSV file
can be submitted as string or as File object
.EXAMPLE
  Get-CSVDelimiter -Path c:\somefile.csv
  Returns delimiter used in file c:\somefile.csv
.EXAMPLE
  Get-ChildItem $home -Filter *.csv -recurse -ErrorAction SilentlyContinue | Get-CSVDelimiter
  Returns delimiter used in any CSV-file found in the user's home folder or one of its subfolders
.LINK
  http://www.powertheshell.com/autodetecting-csv-delimiter/#
#>
function Get-CSVDelimiter {
[CmdletBinding()]

    param
    (
        # Path name to CSV file
        # can be submitted as string or as File object
        [Parameter(ValueFromPipelineByPropertyName=$true,ValueFromPipeline=$true)]
        [Alias('FullName')]
        [String]
        $Path
    )

    begin
    {
        # list of ascii codes that typically cannot be a delimiter: 0-9, A-Z, a-z, and space:
        $excluded = ([Int][Char]'0'..[Int][Char]'9') + ([Int][Char]'A'..[Int][Char]'Z') + ([Int][Char]'a'..[Int][Char]'z')  + 32

        # private function that gets all possible delimiters in a given text line
        # it excludes any text that is quoted
        # it excludes any character codes listed in $excluded
        # it returns a hash table with ascii code as key and frequency as value
        function Get-DelimitersFromLine
        {
            param($TextLine)

            $quoted = $false
            $result = @{}

            # examine line character by character
            foreach($char in $line.ToCharArray())
            {
                # if a double-quote is detected, toggle quoting flag:
                if ($char -eq '"')
                { $quoted = -not $quoted }
                elseif ($quoted -eq $false) 
                # else, if not excluded, add to result hash table:
                { if ($excluded -notcontains [Int]$char) { $result.$([Int]$char) ++ } }
            }

            # return result hash table            
            $result
        }
    }

    # this gets repeated for each submitted path or CSV file:
    process
    {
        # initialize variables
        $oldcandidates = $null

        # examine each line in CSV file:
        $file = [System.IO.File]::OpenText($Path)
        While (-not $file.EndOfStream)
        {
            $line = $file.ReadLine()

            # examine current line and get possible delimiters:
            $candidates = Get-DelimitersFromLine $line

            # if this is the first line, skip analysis
            if ($oldcandidates -eq $null) 
            { 
                # if first line starts with "#", ignore
                if (-not $line.StartsWith('#')) 
                { $oldcandidates = $candidates } 
            }
            # else, identify ascii codes that have the same frequency in both this line
            # and the previous line, and store in hash table $new:
            else
            {
                $new = @{}
                $keys = $oldcandidates.Keys
                foreach($key in $keys)
                {
                    if ($candidates.$key -eq $oldcandidates.$key)
                    {
                        $new.$key = $candidates.$key
                    }
                }
                $oldcandidates = $new

                # if only 1 possible delimiter is left, we are done
                # exit loop, no necessity to examine the remaining lines:
                if ($oldcandidates.keys.count -lt 2)
                {
                    break
                }
            }
        }
        $file.Close()

        # create return object
        $rv = New-Object PSObject | Select-Object -Property Name, Path, Delimiter, FriendlyName, ASCII, Rows, Status
        $rv.Path = $Path
        $rv.Name = Split-Path -Path $Path -Leaf

        # no keys found:
        if ($oldcandidates.keys.count -eq 0)
        {
            $rv.Status = 'No delimiter found'
        }
        # exactly one key found, good:
        elseif ($oldcandidates.keys.count -eq 1)
        {
            $ascii = $oldcandidates.keys | ForEach-Object { $_ }
            $rv.ASCII = $ascii
            # convert ascii to real character:
            $rv.Delimiter = [String][Char]$ascii
            # number of rows is frequency of delimiter plus 1:
            $rv.rows = $oldcandidates.$ascii + 1
            # add friendly names for the most common delimiter types:
            switch ($ascii)
            {
                9    { $rv.FriendlyName = 'TAB' }
                44   { $rv.FriendlyName = 'Comma' }
                59   { $rv.FriendlyName = 'Semicolon' }
            }
            $rv.Status = 'Found'
        }
        # ambiguous delimiters detected, list ambiguous delimiters
        else
        {
            # convert delimiter ascii keys in a comma-separated list of quoted characters:
            $delimiters = (($oldcandidates.keys | ForEach-Object { ('"{0}"' -f [String][Char]$_) }) -join ',')
            $rv.Status =  "Ambiguous separator keys: $delimiters"
        }

        # ETS: set default visible properties on return object (applies to PS 3.0 only, no effect in PS 2.0):
        [String[]]$properties = 'Name','Delimiter','FriendlyName', 'Rows'
        [System.Management.Automation.PSMemberInfo[]]$PSStandardMembers = New-Object System.Management.Automation.PSPropertySet DefaultDisplayPropertySet,$properties

        # an Rückgabeobjekt anhängen:  
        $rv | Add-Member -MemberType MemberSet -Name PSStandardMembers -Value $PSStandardMembers
        
        # return result:
        $rv
    }

}
