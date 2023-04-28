call CreateConsole %1.Console
call CreateDemoWeb %1.Web
call CreateMainApp %1.Core
cd ..\source
dotnet new sln -n %1
dotnet sln %1.sln add .\tooling\%1.Console\%1.Console.csproj
dotnet sln %1.sln add .\DemoWeb\%1.Web\%1.Web.csproj
dotnet sln %1.sln add .\Application\%1.Core\%1.Core.csproj
dotnet sln %1.sln add .\Test\Unit\%1.Core.Test\%1.Core.Test.csproj
code .