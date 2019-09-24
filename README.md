# PowerShellScripts
Some PowerShell scipts that can be hopefully also useful to others. Most of them were written by me, if not I tried to reference the author and or source. Since I collected those scripts over several years, I couldn't always remember though. 

| Function | Location | Synopsis | Related Blog Post | Full Documentation |
| --- | --- | --- | --- | --- |
| Diff-CSV | Binary wrapper\Diff-CSV.ps1 | PowerShell wrapper for diff-table.exe a tool to diff csv files |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Diff-CSV.md) |
| Diff-Excel | Binary wrapper\Diff-Excel.ps1 | PowerShell wrapper for ExcelConmpare a tool to diff excel files |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Diff-Excel.md) |
| Get-ESSearchResult | Binary wrapper\Get-ESSearchResult.ps1 | PowerShell wrapper around Everything search command line (es.exe). | [Link](https://powershellone.wordpress.com/2015/02/28/using-everything-search-command-line-es-exe-via-powershell/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-ESSearchResult.md) |
| SilverSearcher | Binary wrapper\SilverSearcher.ps1 | PowerShell wrapper around silver searcher (ag.exe) Recursively search for PATTERN in PATH. Like grep or ack, but faster. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/SilverSearcher.md) |
| Add-LookupColumn | Data Wrangling\Add-LookupColumn.ps1 | Funciton to use Excel's vlookup through PowerShell. Requires Excel to be installed. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Add-LookupColumn.md) |
| Convert-CsvToXls | Data Wrangling\Convert-CsvToXls.ps1 | Convert a .csv file to xlsx (despite the name) |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Convert-CsvToXls.md) |
| ConvertFrom-NamedCaptureGroup | Data Wrangling\ConvertFrom-NamedCaptureGroup.ps1 | Convert the output of a RegEx named capture group to a PSObject |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ConvertFrom-NamedCaptureGroup.md) |
| Get-ChangeLog | Data Wrangling\Get-ChangeLog.ps1 | Comparing two objects or .csv files column by column. | [Link](https://powershellone.wordpress.com/2015/06/30/comparing-two-objects-or-csv-files-column-by-column/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-ChangeLog.md) |
| Get-CSVDelimiter | Data Wrangling\Get-CSVDelimiter.ps1 | Autodetects delimiter used in CSV files and number of rows |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-CSVDelimiter.md) |
| Get-LineNumber | Data Wrangling\Get-LineNumber.ps1 | Retrieve specific Linenumber(s) from afile. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-LineNumber.md) |
| Get-TextWithin | Data Wrangling\Get-TextWithin.ps1 | Get the text between two (balanced) surrounding characters (e.g. brackets, quotes...) |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-TextWithin.md) |
| grep | Data Wrangling\grep.ps1 | Filter output based on keyword, but still retain PowerShell object format. Hence it can be even used in the middle of a pipeline (see example): |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/grep.md) |
| Group-ConsecutiveRanges | Data Wrangling\Group-ConsecutiveRanges.ps1 | Given an integer array with numbers, return groups of consecutive ranges. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Group-ConsecutiveRanges.md) |
| Import-Excel | Data Wrangling\Import-Excel.ps1 | Import data from Excel using Excel's COM interface. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Import-Excel.md) |
| Sort-CustomList | Data Wrangling\Sort-CustomList.ps1 | Sort data using a custom list in PowerShell. | [Link](https://powershellone.wordpress.com/2015/07/30/sort-data-using-a-custom-list-in-powershell/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Sort-CustomList.md) |
| Update-Content | Data Wrangling\Update-Content.ps1 | Insert text on a new line after the line matching the StartPattern or replace text between start- and end Pattern within a file |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Update-Content.md) |
| Compare-File | Extend Builtin\Compare-File.ps1 | A wrapper and extension for the built-in Compare-Object cmdlet to compare two txt based files and receive a side-by-side comparison (including Line numbes). |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Compare-File.md) |
| Get-Choice | Extend Builtin\Get-Choice.ps1 | An alternative to the built-in PromptForChoice providing a consistent UI across different hosts. | [Link](https://powershellone.wordpress.com/2015/09/10/a-nicer-promptforchoice-for-the-powershell-console-host/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-Choice.md) |
| Get-HelpExamples | Extend Builtin\Get-HelpExamples.ps1 | Get examples for a Cmdlet. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-HelpExamples.md) |
| Get-HelpSyntax | Extend Builtin\Get-HelpSyntax.ps1 | Get the syntax for a cmdlet pretty printed + explanation |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-HelpSyntax.md) |
| Get-Range | Extend Builtin\Get-Range.ps1 | Function to retrieve a continuous or stepwise Range of integers,decimals,dates,month names, day names or chars. Simulating Haskell`s Range operator | [Link](https://powershellone.wordpress.com/2015/03/15/extending-the-powershell-Range-operator/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-Range.md) |
| Join-Tables | Extend Builtin\Join-Tables.ps1 | Function to join tables based on one or more common columns with an option to summarize (aggregate) joined columns. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Join-Tables.md) |
| Select-ObjectX | Extend Builtin\Simplified-Select.ps1 | Proxy function for Select-Object providing easier syntax for calculated properties. | [Link](https://powershellone.wordpress.com/2015/11/23/simplified-syntax-for-calculated-properties-with-select-object/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Select-ObjectX.md) |
| WhereEx | Extend Builtin\WhereEx.ps1 | POC for a simplified Where-Object with multiple conditions on the same property for PowerShell. | [Link](https://powershellone.wordpress.com/2015/11/02/simplified-where-object-for-multiple-conditions-on-the-same-property-for-powershell/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/WhereEx.md) |
| Add-FormatTableView | format output\Add-FormatTableView.ps1 | Function to add a Format Table View for a type | [Link](https://powershellone.wordpress.com/2015/03/09/powershell-format-table-views/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Add-FormatTableView.md) |
| Add-PropertySet | format output\Add-PropertySet.ps1 | Function to create property sets | [Link](https://powershellone.wordpress.com/2015/03/06/powershell-propertysets-and-format-views/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Add-PropertySet.md) |
| ConvertTo-HtmlConditionalFormat | format output\ConvertTo-HtmlConditionalFormat.ps1 | Function to convert PowerShell objects into an HTML table with the option to format individual table cells based on property values using CSS selectors. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ConvertTo-HtmlConditionalFormat.md) |
| Format-Pattern | format output\Format-Pattern.ps1 | Highlight a pattern in the output. Cannot be used in the middle of a pipeline. And works only on the commandline. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Format-Pattern.md) |
| Get-FormatView | format output\Get-FormatView.ps1 | Function to get the format views for a particular type. | [Link](https://powershellone.wordpress.com/2015/03/09/powershell-format-table-views/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-FormatView.md) |
| Out-ConditionalColor | format output\Out-ConditionalColor.ps1 | Filter to conditionally format PowerShell output within the PowerShell console. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Out-ConditionalColor.md) |
| Out-ConditionalColorProperties | format output\Out-ConditionalColorProperties.ps1 | Filter to conditionally format property values within PowerShell output on the console. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Out-ConditionalColorProperties.md) |
| Out-Diff | format output\Out-Diff.ps1 | Generate html diff from git diff output using diff2html. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Out-Diff.md) |
| 8Queens | programming exercises\8 Queens.ps1 | PowerShell solution for a classical programming exercise. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/8Queens.md) |
| Confirm-Brackets | programming exercises\Confirm-Brackets.ps1 | Function to check and display (through indentation) pairing of braces, brackets, and parentheses '{[()]} |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Confirm-Brackets.md) |
| GenerateSolveMaze | programming exercises\GenerateSolveMaze.ps1 | Function to generate a GUI (Windows forms) to build and solve random mazes |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/GenerateSolveMaze.md) |
| Get-CartesianProduct | programming exercises\Get-CartesianProduct.ps1 | Get the cartesian product for an object that contains array properties. See example. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-CartesianProduct.md) |
| TowerOfHanoi | programming exercises\TowerOfHanoi.ps1 | PowerShell solution to the Tower of Hanoi problem (http://en.wikipedia.org/wiki/Tower_of_Hanoi) using recursion. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/TowerOfHanoi.md) |
| Add-PowerShellContextMenu | Utils\Add-PowerShellContextMenu.ps1 | Function to create context menu entries in order to invoke PowerShell | [Link](https://powershellone.wordpress.com/2015/09/16/adding-edit-with-powershell-ise-and-open-powershell-here-as-admin-to-the-context-menu/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Add-PowerShellContextMenu.md) |
| Add-ScriptHelpISEAddOn | Utils\Add-ScriptHelpISEAddOn.ps1 | Function to create an ISE Add-On that will generate comment based help for functions. The functions requires the Show-UI module. | [Link](https://powershellone.wordpress.com/2015/09/28/create-an-integrated-wpf-based-ise-add-on-with-powershell/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Add-ScriptHelpISEAddOn.md) |
| ConvertFrom-ExcelClipboard | Utils\ConvertFrom-ExcelClipboard.ps1 | Convert copied range from excel to an array of PSObjects | [Link](https://powershellone.wordpress.com/2016/06/02/powershell-tricks-convert-copied-range-from-excel-to-an-array-of-psobjects/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ConvertFrom-ExcelClipboard.md) |
| ConvertFrom-HtmlToText | Utils\ConvertFrom-HtmlToText.ps1 | Extract the text out of a HTML string |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ConvertFrom-HtmlToText.md) |
| ConvertTo-PSFunction | Utils\ConvertTo-PSFunction.ps1 | Function to "convert" legacy command line commands to PowerShell functions |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ConvertTo-PSFunction.md) |
| Delete-ComputerRestorePoint | Utils\Delete-ComputerRestorePoint.ps1 | Function to Delete Windows System Restore points |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Delete-ComputerRestorePoint.md) |
| ForeachFor2 | Utils\ForeachFor2.ps1 | Function to step through two series of values in two collections and run commands against them. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/ForeachFor2.md) |
| Get-Breaktimer | Utils\Get-Breaktimer.ps1 | Function to display a break timer with a countdown based on absolute or relative times. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-Breaktimer.md) |
| Get-Field | Utils\Get-Field.ps1 | Gets the public and private fields of objects. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-Field.md) |
| Get-FileAndExtract | Utils\Get-FileAndExtract.ps1 | Function to download and extract files. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-FileAndExtract.md) |
| Get-FormatStrings | Utils\Get-FormatStrings.ps1 | Show common format strings for a given input and the respective outputs |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-FormatStrings.md) |
| Get-GoogleSuggestion | Utils\Get-GoogleSuggestion.ps1 | Function to get "Did you mean?" suggestions from Google. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-GoogleSuggestion.md) |
| Get-MSDNInfo | Utils\Get-MSDNInfo.ps1 | Opens the MSDN web page of an object member: type, method or property. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-MSDNInfo.md) |
| Get-Uninstaller | Utils\Get-Uninstaller.ps1 | Function to get the uninstaller for installed software via registry (PowerShell v4 and <) or Get-Package) | [Link](https://powershellone.wordpress.com/2016/02/13/retrieve-uninstallstrings-to-fix-installer-issues/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-Uninstaller.md) |
| Get-WIFIPassword | Utils\Get-WIFIPassword.ps1 | Get the Wifi password of stored networks using netsh. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-WIFIPassword.md) |
| Invoke-HTMLPesterReport | Utils\Invoke-HTMLPesterReport.ps1 | Generate HTML report for Pester test results using ReportUnit.exe | [Link](https://powershellone.wordpress.com/2016/05/18/reporting-against-pester-test-results/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Invoke-HTMLPesterReport.md) |
| Invoke-LegacyCommand | Utils\Invoke-LegacyCommand.ps1 | Helper to invoke legacy command with switches from PowerShell in a convenient way.  Also supports pipeline input to invoke the command with arguments multiple times. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Invoke-LegacyCommand.md) |
| Invoke-Parser | Utils\Invoke-Parser.ps1 | Uses PowerShell's parser and returns the AST, Tokens and Errors |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Invoke-Parser.md) |
| Migrate-ScheduledTask | Utils\Migrate-ScheduledTask.ps1 | Script to migrate scheduled tasks from Windows XP/Server 2003 to Windows 7/Server 2008 task scheduler |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Migrate-ScheduledTask.md) |
| Monitor-Folder | Utils\Monitor-Folder.ps1 | Monitors a folder for changes using non-persistent asynchronous events |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Monitor-Folder.md) |
| Open-Registry | Utils\Open-Registry.ps1 | Open the regedit at the specified path similar to sysinternals regjump. |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Open-Registry.md) |
| Restart-Process | Utils\Restart-Process.ps1 | Function to restart process(es) | [Link](https://powershellone.wordpress.com/2016/02/25/fix-clipboard-is-not-working-restart-process-with-powershell/) | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Restart-Process.md) |
| Generate-ScriptMarkdownHelp | PowerShellScripts\Generate-ScriptMarkdownHelp.ps1 | The function that generated the Markdown help in this repository. (see Example for usage).  Generates markdown help for Github for each function containing comment based help (Description not empty) within a folder recursively and a summary table for the main README.md |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Generate-ScriptMarkdownHelp.md) |
| Get-FunctionFromScript | PowerShellScripts\Generate-ScriptMarkdownHelp.ps1 | Gets the functions and filters declared within a script block or a file |  | [Link](https://github.com/DBremen/PowerShellScripts/blob/master/docs/Get-FunctionFromScript.md) |
