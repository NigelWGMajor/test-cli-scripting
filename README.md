# test-cli-scripting

A sandbox for testing Cli Scripting 

The scripts are in the _cmd folder

Master make the extended project structure.
_Restart clears everything then calls Master

_CreateWebConsoleApi creates a small set with a web app, a web api app and a console app.

The other pieces are called by these three;

CreateAlternative makes a gRPC web api 
CreateConsole a console
CreateDemoWeb makes a razor web app
CreateExport creates a library file in the Exports folder
CreateImport makes a library file in the Import folder
CreateMainApp creates a DotNetCore web api project

Typical use is, from the _cmd folder:
`CreateAlternative ProjectName`

Unit tests are set up in the Test.Unit folder.
