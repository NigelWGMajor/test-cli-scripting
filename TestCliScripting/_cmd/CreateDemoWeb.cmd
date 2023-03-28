md ..\source
cd ..\source

md DemoWeb
cd DemoWeb

echo # %1 > ReadMe.md
echo Reporting 2.0 Web Application (gRPC version) %1 >> ReadMe.md --force
echo . >> ReadMe.md 
echo ## Run >> ReadMe.md
echo `cd %1` >> ReadMe.md
echo `dotnet run` >> ReadMe.md

dotnet new razor -n %1 -f net6.0


cd ..\..\_cmd
if errorlevel 1 pause

