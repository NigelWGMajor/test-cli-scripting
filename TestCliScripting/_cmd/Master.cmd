md ..\source
cd ..\source
dotnet new sln -n Master
cd ..\_cmd
call .\CreateMainapp.cmd Degreed.Reporting.Core
call .\CreateExport.cmd Reporting.Degreed.Web
call .\CreateExport.cmd Reporting.Operations.Web
call .\CreateExport.cmd Reporting.Retool.Web
call .\CreateImport.cmd Reporting.Transmission
call .\CreateImport.cmd Reporting.Encryption
call .\CreateImport.cmd Reporting.Conversion
call .\CreateImport.cmd Reporting.Storage
call .\CreateImport.cmd Reporting.Generation
call .\CreateImport.cmd Reporting.Data.Sql
call .\CreateImport.cmd Reporting.Data.Snowflake
call .\CreateImport.cmd Reporting.Data.ElasticSearch
call .\CreateAlternative.cmd Degreed.Reporting.Grpc
call .\CreateConsole.cmd Reporting.TestConsole
call .\CreateWebTool.cmd Reporting.Tooling.Web
if errorlevel 1 pause
cd ..
cd source
code .
