md ..\source
cd ..\source

md Tooling
cd Tooling

dotnet new console -o %1 -f net6.0

cd %1
echo # %1 > ReadMe.md
echo Console Application %1 >> ReadMe.md
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md
cd ..

cd ..\..\_cmd

dotnet sln ..\source\Master.sln add ..\source\Tooling\%1\%1.csproj

if errorlevel 1 pause