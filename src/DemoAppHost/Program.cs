var builder = DistributedApplication.CreateBuilder(args);

var sqlServer = builder.AddSqlServer("sql");

var sqlDatabase = sqlServer.AddDatabase("test");

//.WithCreationScript(@"CREATE DATABASE [test]
//GO
//" + File.ReadAllText("../../Database/DataLossScript.sql"));

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
