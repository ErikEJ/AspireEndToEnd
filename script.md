# Prep

Launch Docker

Close all VS instances

Remove Server Explorer connections

Populate Chinook on SQL Express 2025 instance with Chinook_SqlServer_AutoIncrementPKs.sql

## Demo script

Explain requirements: .NET 10 SDK, everything is xplat, demoing on Visual Studio 2026

In C:\Demo, create new solution, XmasDemo

Show installed extensions (SQL Project Power Tools, T-SQL Anaylzer, EF Core Power Tools)

Add new SQL SDK Project, Database

Show .csproj, explain advantages over .sqlproj (xplat, simple project format (avoids merge conflicts), NuGet database ref, simple code analysis via Nuget)

Add simple publish:

```xml
<TargetServerName>(localdb)\mssqllocaldb</TargetServerName>
```

Show and remove readme!

Import Chinook database from SQLEXPRESS 2025 instance

Run build.

Show rule violations in Error List.

Show .dacpac and explain.

Add stored proc with SELECT * and see warnings in editor.

Create diagram and show it.

Publish database to LocalDB

Show new sproc in SQL Server Object Explorer.

Add .NET 10 class project.

Create DbContext with Power Tools from .dacpac

Explain advantages over Microsoft tools.

Show generated class and DbContext.

Build project.

Add Web API project

Add reference to Class lib.

Update Program.cs: (add swagger, use Db and add endpoint, add connection string)

```c#
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();

    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/openapi/v1.json", "v1");
    });
}
```

```c#
builder.Services.AddDbContext<DatabaseContext>(o => {
    o.UseSqlServer(builder.Configuration.GetConnectionString("Database"));
});
```

```json
    "ConnectionStrings": {
        "Database": "Server=(localdb)\\mssqllocaldb;Database=Database;Trusted_Connection=True;Encrypt=false"
    }
```

```xml
<PackageReference Include="Swashbuckle.AspNetCore.SwaggerUI" Version="10.0.1" />
```

```c#
app.MapGet("/albums", async (DatabaseContext db) =>
{
    var albums = await db.Albums
        .Include(a => a.Artist)
        .OrderBy(a => a.Title)
        .ToListAsync();
    return albums;
});
```

Run Web API and demo Swagger method.

Add Aspire AppHost

Note: dotnet new install Aspire.ProjectTemplates

Add reference to Database project and WebAPI

Add Packages:

```xml
<ItemGroup>
  <PackageReference Include="CommunityToolkit.Aspire.Hosting.SqlDatabaseProjects" Version="13.0.0" />
</ItemGroup>
```

Update AppHost.cs:

```c#
var sqlServer = builder.AddSqlServer("sql");

var sqlDatabase = sqlServer.AddDatabase("Database");

var sqlProject = builder
    .AddSqlProject<Projects.Database>("sqlproj")
    .WithReference(sqlDatabase);

builder
    .AddProject<Projects.WebApi>("client")
    .WithReference(sqlDatabase)
    .WaitForCompletion(sqlProject);
```

Explain code!

Run App Host

Show web api connection string in Dashboard

Open web api and navigate to Swagger

Run endpoint

Add seed data from Artist table.

Rebuild

Run App Host

Show web api connection string in Dashboard

Open web api and navigate to Swagger

Run endpoint

Back to slides / agenda.

Q & A
