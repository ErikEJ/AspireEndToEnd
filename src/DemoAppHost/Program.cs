var builder = DistributedApplication.CreateBuilder(args);

var sqlServer = builder.AddSqlServer("sql");

// .WithDbGate()
// Uncomment the following lines to use a persistent container and persistent storage
// This improves the performance of the database server and allows you to keep data between runs
//.WithLifetime(ContainerLifetime.Persistent)
//.WithDataVolume("sql-data");

var sqlDatabase = sqlServer.AddDatabase("test");

//    .WithCreationScript(@"IF NOT EXISTS ( SELECT 1 FROM sys.databases WHERE name = [test] ) CREATE DATABASE [test];
//GO" + File.ReadAllText("../Database/DataLossScript.sql"));

var sqlProject = builder
    .AddSqlProject<Projects.Database>("sqlproj")
    .WithReference(sqlDatabase);

var dabServer = builder.AddDataAPIBuilder("dab")
    .WithReference(sqlDatabase)
    .WaitForCompletion(sqlProject);

builder
    .AddProject<Projects.Metalhead_WpfApiDataExample_UI_Wpf>("client")
    .WithEnvironment("Chinook__ApiBaseUrl", dabServer.GetEndpoint("http"))
    .WaitFor(dabServer);

builder.Build().Run();
