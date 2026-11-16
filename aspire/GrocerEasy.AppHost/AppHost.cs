var builder = DistributedApplication.CreateBuilder(args);

var sqlite = builder.AddSqlite("sqlite", "../../db/", "GrocerEasy.db");

var exampleProject = builder.AddProject<Projects.GrocerEasy_Api>("api")
    .WithReference(sqlite);

builder.Build().Run();
