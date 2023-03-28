md ..\source
cd ..\source

md tools
cd tools

dotnet new console -o %1 -f net6.0

echo # %1 > ReadMe.md
echo Console Application %1 >> ReadMe.md
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md

cd ..\..\_cmd
