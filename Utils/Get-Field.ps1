function Get-Field {
<#
.SYNOPSIS
    Gets the public and private fields of objects.
.DESCRIPTION
    DB: Author of this version is Rohn Edwards: https://rohnspowershellblog.wordpress.com/
    First, I must give credit to two sources:
    1. I first saw the Get-Field function here: http://powershell.cz/2013/02/25/get-strictmode/
    2. They referenced the source of the function, authored by Andrew Savinykh, which was here: http://poshcode.org/2057
    Rohn's function does the same thing as the original, but he simplified the use of the [BindingFlags]
    (enumerations allow you to cast arrays of strings) and changed the output to PSObjects instead
    of a hash table. I also added pipeline input, the ability to filter on field names, and the 
    ability to get a field's value directly.
    .NOTES
        You could easily modify the function with some switch parameters to control whether or not Public and/or Private
        fields are being displayed. You could also display static fields by modifying the $BindingFlags array.
        Also, the properties on the return object aren't ordered. If you're using PSv3 or higher, you can change the
        hash table where the properties are defined to be an [ordered] hash table, or you could create the return object
        by using the [PSCustomObject] accelerator.
    .EXAMPLE
        $ExecutionContext | Get-Field
        #This will show all of the public and private fields for the $ExecutionContext object
    .EXAMPLE
        $ExecutionContext | Get-Field _context
        #This will show a public or private field named '_context' for the $ExecutionContext object
    .EXAMPLE
        $ExecutionContext | Get-Field _context -ValueOnly
        #This will expand the value for a field named '_context' for the $ExecutionContext object
    .EXAMPLE
        $ExecutionContext | Get-Field _context -ValueOnly | Get-Field *engine*
        #This will get the fields from the $ExecutionContext._context object that have the word 'engine' in their name.
    .LINK
        https://gallery.technet.microsoft.com/scriptcenter/Get-Field-Get-Public-and-7140945e
    #>
    [CmdletBinding()]
    param (
        # Specifies the object whose fields are retrieved
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        $InputObject,
        # Specifies the names of one or more field names. The * wildcard is allowed.
        # Get-Field gets only the fields that satisfy the requirements of at least one of the Name strings.
        [Parameter(Position=0)]
        [string[]] $Name = "*",
        # Gets only the value of the field(s)
        [switch] $ValueOnly
    )
 
    process {
        $Type = $InputObject.GetType()
        [string[]] $BindingFlags = "Public", "NonPublic", "Instance"

        $Type.GetFields($BindingFlags) | Where-Object {
                foreach($CurrentName in $Name) {
                    if ($_.Name -like $CurrentName) { 
                        return $true
                    }
                }
            } | ForEach-Object {
                $CurrentField = $_

                $CurrentFieldValue = $Type.InvokeMember($CurrentField.Name, $BindingFlags + "GetField", $null, $InputObject, $null)
                if ($ValueOnly) {
                    $CurrentFieldValue
                }
                else {
                    $ReturnProperties = @{}
                    foreach ($PropName in echo Name, IsPublic, IsPrivate) {
                        $ReturnProperties.$PropName = $CurrentField.$PropName
                    }

                    $ReturnProperties.Value = $CurrentFieldValue
                    New-Object PSObject -Property $ReturnProperties
                }
            } 
    }
}