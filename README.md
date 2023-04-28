# test-cli-scripting

A sandbox for testing Cli Scripting 

The scripts are in the _cmd folder

The _Restart script 
- nukes the entire source folder 
- Makes a master.sln file
- runs the Master script

The Master script
- makes the extended project structure for whatever you desire.

_CreateWebConsoleApi creates a small set with a web app, a web api app and a console app.

The other pieces are called by these three;

CreateAlternative makes a gRPC web api 
CreateConsole a console
CreateDemoWeb makes a razor web app
CreateExport creates a library file in the Exports folder
CreateImport makes a library file in the Import folder
CreateMainApp creates a DotNetCore web api project
CreateWebTool creates a dotnet razor project in the tooling folder,

If not running a bulkk script, or if needing things later,
these can be used indiviually.

Typical use is, from the _cmd folder:
`CreateAlternative ProjectName`

After setting up a project, I recommend either renaming the Source folder or deleting the _restart script.

Unit tests are set up in the Test.Unit folder.

All projects are added to the Master solution
Import and Export projects add their references to their test projects.

