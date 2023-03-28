md ..\source
cd ..\source

md Imports
cd Imports

dotnet new classlib -n %1 -f netstandard2.0 --force 

cd %1

echo # %1 > ReadMe.md
echo Reporting 2.0 Import %1 >> ReadMe.md
echo . >> ReadMe.md 
echo ## Pack >> ReadMe.md
echo `dotnet pack`

echo ## Publish >> ReadMe.md
echo `dotnet publish <path>` >> ReadMe.md


cd ..

echo # %1 > ReadMe.md
echo Reporting 2.0 Imports contains libraries providing support classes for Reporting 2.0 applications %1 >> ReadMe.md

cd ..

md Test
cd Test
md Unit
cd Unit

dotnet new xunit -f net6.0 -n %1.Test --force
cd %1.Test
dotnet add reference ..\..\..\Application\%1\%1.csproj

cd ..\..\..\_cmd