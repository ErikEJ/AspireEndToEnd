using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;
using System;
using System.Net.Http.Headers;
using System.Windows;

using Metalhead.WpfApiDataExample.UI.Core.Api;
using Metalhead.WpfApiDataExample.UI.Core.Models;
using Metalhead.WpfApiDataExample.UI.Wpf.ViewModels;
using Metalhead.WpfApiDataExample.UI.Wpf.Views;

namespace Metalhead.WpfApiDataExample.UI.Wpf;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    public IHost Host { get; }

    public App()
    {
        var builder = Microsoft.Extensions.Hosting.Host.CreateApplicationBuilder();

        builder.Services.AddOptions<ChinookDabOptions>()
            .Bind(builder.Configuration.GetSection(ChinookDabOptions.Chinook))
            .ValidateDataAnnotations()
            .ValidateOnStart();

        builder.Services.AddSingleton<ILogger, DebugLogger>();
        builder.Services.AddSingleton(sp => sp.GetRequiredService<IOptions<ChinookDabOptions>>().Value);
        builder.Services.AddSingleton<ApiHelper>();
        builder.Services.AddSingleton<ArtistEndpoint>();

        builder.Services.AddSingleton<ShellViewModel>();
        builder.Services.AddTransient<ArtistViewModel>();

        builder.Services.AddSingleton<ShellView>();
        builder.Services.AddTransient<ArtistView>();

        builder.Services.AddHttpClient<ApiHelper>(client =>
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        });
        
        Host = builder.Build();
    }

    public new static App Current => (App)Application.Current;

    protected override async void OnStartup(StartupEventArgs e)
    {
        await Host!.StartAsync();

        using var serviceScope = Host.Services.CreateScope();
        var serviceProvider = serviceScope.ServiceProvider;        

        try
        {
            serviceProvider.GetRequiredService<ShellView>().Show();
            base.OnStartup(e);
        }
        catch (Exception)
        {
            ILogger logger = serviceProvider.GetRequiredService<ILogger>();
            logger.Log("Application exited unexpectedly.");
            Environment.Exit(0);
        }
    }

    protected override async void OnExit(ExitEventArgs e)
    {
        await Host!.StopAsync();
        base.OnExit(e);
    }
}
