using Microsoft.Extensions.DependencyInjection;
using System.Windows.Controls;

using Metalhead.WpfApiDataExample.UI.Wpf.ViewModels;

namespace Metalhead.WpfApiDataExample.UI.Wpf.Views
{
    public partial class ArtistView : UserControl
    {
        public ArtistView()
        {
            InitializeComponent();

            DataContext = App.Current.Host.Services.GetService<ArtistViewModel>();
        }
    }
}
