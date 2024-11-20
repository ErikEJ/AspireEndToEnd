using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using System.Windows;

using Metalhead.WpfApiDataExample.UI.Core.Api;
using Metalhead.WpfApiDataExample.UI.Core.Models;

namespace Metalhead.WpfApiDataExample.UI.Wpf.ViewModels;

public partial class ArtistViewModel : ObservableObject
{
    public ObservableCollection<Artist>? Artists { get; set; }
    private ArtistEndpoint ArtistEndpoint { get; }

    public ArtistViewModel(ArtistEndpoint artistEndpoint)
    {
        ArtistEndpoint = artistEndpoint;
        GetArtists();
    }

    [RelayCommand]
    public void Refresh()
    {
        GetArtists();
    }

    public async void GetArtists()
    {
        var artists = await ArtistEndpoint.GetArtistsAsync();
        if (artists is null)
        {
            MessageBox.Show("Failed to fetch weather forecasts");
            return;
        }
        
        Artists = new ObservableCollection<Artist>(artists);
        OnPropertyChanged(nameof(Artists));
    }
}
