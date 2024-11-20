using Microsoft.Extensions.DependencyInjection;
using System.Windows;

using Metalhead.WpfApiDataExample.UI.Wpf.ViewModels;

namespace Metalhead.WpfApiDataExample.UI.Wpf.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class ShellView : Window
    {
        public ShellView()
        {
            InitializeComponent();

            DataContext = App.Current.Host.Services.GetService<ShellViewModel>();
        }
    }
}
