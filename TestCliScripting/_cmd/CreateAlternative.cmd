md ..\source
cd ..\source

md Alternative
cd Alternative

dotnet new grpc -n %1 -F net6.0

cd %1
echo # %1 > ReadMe.md
echo Web Application (gRPC version) %1 >> ReadMe.md
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md
echo . >> ReadMe.md 
echo [more info](https://www.faesel.com/blog/dotnet-grpc-forgot-to-tell-you) >>ReadMe.md

dotnet add package "Grpc.AspNetCore.Server.Reflection" -f net6.0
cd ..

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\Alternative\%1\%1.csproj
cd ..\..\..\..\_cmd

dotnet sln ..\source\Master.sln add ..\source\Alternative\%1\%1.csproj
dotnet sln ..\source\Master.sln add ..\source\Test\Unit\%1.Test\%1.Test.csproj

if errorlevel 1 pause

