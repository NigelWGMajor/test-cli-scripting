md ..\source
cd ..\source

md Application
cd Application

dotnet new webapi -n %1 -f net6.0
cd %1

echo # %1 > ReadMe.md
echo Web Application %1 >> ReadMe.md
echo . >> ReadMe.md
echo ## Run
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md
echo . >> ReadMe.md
echo [Dotnet6 Tutorial](https://www.youtube.com/watch?v=vdhFw1VSowg) >> readme.md

cd ..\..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test

dotnet add reference ..\..\..\Application\%1\%1.csproj

cd ..\..\..\..\_cmd

dotnet sln ..\source\Master.sln add ..\source\Application\%1\%1.csproj
dotnet sln ..\source\Master.sln add ..\source\Test\Unit\%1.Test\%1.Test.csproj

if errorlevel 1 pause


