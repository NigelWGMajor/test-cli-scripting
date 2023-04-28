md ..\source
cd ..\source

md Tooling
cd Tooling

echo # %1 > ReadMe.md
echo Web Application (razor) %1 >> ReadMe.md 
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md

dotnet new razor -n %1 -f net6.0

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\Tooling\%1\%1.csproj

cd ..\..\..\..\_cmd
dotnet sln ..\source\Master.sln add ..\source\Tooling\%1\%1.csproj
dotnet sln ..\source\Master.sln add ..\source\Test\Unit\%1.Test\%1.Test.csproj

if errorlevel 1 pause

