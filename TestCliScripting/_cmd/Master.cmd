call .\CreateMainapp.cmd Delta.Romeo
call .\CreateExport.cmd Romeo.Delta.Web
call .\CreateExport.cmd Romeo.Operations.Web
call .\CreateExport.cmd Romeo.Retool.Web
call .\CreateImport.cmd Romeo.Transmission
call .\CreateImport.cmd Romeo.Encryption
call .\CreateImport.cmd Romeo.Conversion
call .\CreateImport.cmd Romeo.Storage
call .\CreateImport.cmd Romeo.Generation
call .\CreateImport.cmd Romeo.Data.Sql
call .\CreateImport.cmd Romeo.Data.Snowflake
call .\CreateImport.cmd Romeo.Data.ElasticSearch
call .\CreateAlternative.cmd Delta.Romeo.G
call .\CreateConsole.cmd Romeo.TestConsole
call .\CreateDemoWeb.cmd Romeo.DemoWebApp
if errorlevel 1 pause


