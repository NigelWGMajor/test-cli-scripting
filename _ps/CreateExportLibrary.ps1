# Create an export library
[CmdletBinding()]
param (
    [Parameter(Mandatory, HelpMessage="The name of the Exported Assembly is required.")]
    [string]
    $LibraryName
)
Set-LocatioN _Path ..
$root = Get-Location
Write-Host $root
# does a folder exist?
if (-not (Test-Path 'Exports'))
{
    mkdir Exports
}
Set-Location -Path 'Exports'
dotnet new classlib --name $LibraryName --framework netstandard2.0
Set-Location -Path ..
if (-not (Test-Path 'Test'))
{
    mkdir Test
}
Set-Location -Path 'Test'
if (-not (Test-Path 'Unit'))
{
    mkdir Unit
}
dotnet new xunit --name "$LibraryName.Test" --framework net6.0
Set-Location "$LibraryName.Test"
dotnet add reference "..\..\$LibraryName\$LibraryName.csproj"
