md ..\source
cd ..\source

md DemoWeb
cd DemoWeb
dotnet new razor -n %1 -f net6.0

cd %1
echo # %1 > ReadMe.md
echo Web Application %1 (razor) >> ReadMe.md 
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md
cd ..

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\DemoWeb\%1\%1.csproj

cd ..\..\..\..\_cmd

dotnet sln ..\source\Master.sln add ..\source\DemoWeb\%1\%1.csproj
dotnet sln ..\source\Master.sln add ..\source\Test\Unit\%1.Test\%1.Test.csproj
if errorlevel 1 pause

