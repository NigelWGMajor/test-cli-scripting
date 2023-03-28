using System.Threading.Tasks;
using Grpc.Net.Client;
using Romeo.TestConsole;

/* This is a test consumer for the gRPC server:

start the server using:
    N:\SierraBeta\TestCliScripting\source\Alternative\Delta.Romeo.G>dotnet run 
start the client using 
    N:\SierraBeta\TestCliScripting\source\tools\Romeo.TestConsole>dotnet run
Follow the console prompts.

*/


// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World! This is a console client for the Delta.Romeo.G gRPC server");
Console.WriteLine("Please ensure that Delta.Romeo.G is running (without debug) and Press any key to continue...");
Console.ReadKey();


// The port number must match the port of the gRPC server.
using var channel = GrpcChannel.ForAddress("https://localhost:7083");
var client = new Greeter.GreeterClient(channel);
var reply = await client.SayHelloAsync(new HelloRequest { Name = "Greeter Console Client" });
Console.WriteLine("Response from Romeo: " + reply.Message);
Console.WriteLine("Press any key to exit...");
Console.ReadKey();
