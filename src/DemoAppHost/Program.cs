//TODO Create .dacpac package from Chinook with Artists and Albums merge scripts as Post-Deploy

var builder = DistributedApplication.CreateBuilder(args);

var sqlServer = builder.AddSqlServer("sql");

var sqlDatabase = sqlServer.AddDatabase("test");

var sqlProject = builder
    .AddSqlProject<Projects.Database>("sqlproj")
    .WithReference(sqlDatabase);

var dab = builder.AddDataAPIBuilder("dab")
    .WithReference(sqlDatabase)
    .WaitForCompletion(sqlProject);

builder.Build().Run();

