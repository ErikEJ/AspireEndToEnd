//TODO Create .dacpac package from Chinook with Artists and Albums merge scripts as Post-Deploy

using System;

var builder = DistributedApplication.CreateBuilder(args);

var sqlServer = builder.AddSqlServer("sql");

var sqlDatabase = sqlServer.AddDatabase("test");

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

