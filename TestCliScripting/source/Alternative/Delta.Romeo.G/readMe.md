# the alternative application

launch using `dotnet run`
This is a gRPC app, so you don't have an endpoint.

/*
the creation file adds a reference but you need to add the reflection around line 10 of the program.cs file
`builder.Services.AddGrpcReflection();`

and before the app.Run add
IWebHostEnvironment env = app.Environment;
if (env.IsDevelopment())
{
    app.MapGrpcReflectionService();
}

This should enable reflection for you.
*/

Then launch Postman... [New] gRPC Request

Enter the server name and port only (e.g. localhost:7094) in the url
Go to the Service Definition tab, refresh [(-) Using Server Reflection]  

If you get no errors you should now be able to drop down the methods and invoke one.

Go back to the Message tab and enter `{` , where intellisense will help you full in what you need to run the command.