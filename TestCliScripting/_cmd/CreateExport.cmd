md ..\source
cd ..\source

md Exports
cd Exports


dotnet new classlib -n %1 -f netstandard2.0 --force

cd %1
echo # %1 > ReadMe.md
echo Export %1 >> ReadMe.md
echo . >> ReadMe.md 
echo ## Pack >> ReadMe.md
echo `dotnet pack` >> ReadMe.md
echo . >> ReadMe.md 
echo ## Publish >> ReadMe.md
echo `dotnet publish (path)` >> ReadMe.md

cd ..

echo # %1 > ReadMe.md
echo Exports contains projects for interop libraries for use by consumers >> ReadMe.md

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\Exports\%1\%1.csproj

cd ..\..\..\..\_cmd

dotnet sln ..\source\Master.sln add ..\source\Exports\%1\%1.csproj
dotnet sln ..\source\Master.sln add ..\source\Test\Unit\%1.Test\%1.Test.csproj

if errorlevel 1 pause