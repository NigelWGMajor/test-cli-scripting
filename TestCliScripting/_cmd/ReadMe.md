# File generation scripts

## Usage

Restart:
- deletes all files then re-creates all

Master;\:
- Re-creates without deleting

Unit tests are created in a parallel folder.

Sub-scripts:

CreateAlternative <name> creates a googl gRPC project
CreateDemoWeb <name> Creates a demo Razor Page app
CreateExport <name> creates a library project in an Export folder
CreateImport <name> creates a library project in an Import folder
CreateMain <name> Creates a web api project in the Application folder

## What then?

### The Main Application:

launch using 
`dotnet run` 
[then](https://localhost:7118/weatherforecast)
will return a weather forecast.

### the alternative application

launch using `dotnet run`
This is a gRPC app, so you don't have an endpoint.

the creation file adds a reference but you need to add the reflection around line 10 of the program.cs file
`builder.Services.AddGrpcReflection();`

and before the app.Run add
IWebHostEnvironment env = app.Environment;
if (env.IsDevelopment())
{
    app.MapGrpcReflectionService();
}

This should enable reflection for you.

Then launch Postman... [New] gRPC Request
Enter the server name and port only (e.g. localhost:7094) in the url
Go to the Service Definition tab, refresh [(-) Using Server Reflection]  
If you get no errors you should now be able to drop down the methods and invoke one.
Go back to the Message tab and enter `{` , where intellisense will help you full in what you need to run the command.

