md ..\source
cd ..\source

md Application
cd Application

echo # %1 > ReadMe.md
echo Romeo 2.0 Web Application %1 >> ReadMe.md
echo . >> ReadMe.md
echo ## Run
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md

echo [Dotnet6Tut](https://www.youtube.com/watch?v=vdhFw1VSowg) >> readme.md

dotnet new webapi -n %1 -f net6.0

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\Application\%1\%1.csproj

cd ..\..\..\..\_cmd
if errorlevel 1 pause

