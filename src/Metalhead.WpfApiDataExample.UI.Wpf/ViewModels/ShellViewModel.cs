using CommunityToolkit.Mvvm.ComponentModel;
using Microsoft.Extensions.DependencyInjection;
using System.Windows.Controls;

using Metalhead.WpfApiDataExample.UI.Wpf.Views;

namespace Metalhead.WpfApiDataExample.UI.Wpf.ViewModels;

public partial class ShellViewModel : ObservableObject
{
    [ObservableProperty]
    private UserControl? _currentView;

    public ShellViewModel()
    {
        _currentView = null;
        CurrentView = App.Current.Host.Services.GetService<ArtistView>();
    }
}
