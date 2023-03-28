call .\CreateMainapp.cmd Degreed.Reporting
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
call .\CreateAlternative.cmd Degreed.Reporting.G
call .\CreateConsole.cmd Reporting.TestConsole
call .\CreateDemoWeb.cmd Reporting.DemoWebApp
if errorlevel 1 pause


