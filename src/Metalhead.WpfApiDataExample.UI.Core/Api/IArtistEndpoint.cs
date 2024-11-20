using Metalhead.WpfApiDataExample.UI.Core.Models;

namespace Metalhead.WpfApiDataExample.UI.Core.Api;
public interface IArtistEndpoint
{
    Task<IEnumerable<Artist>?> GetArtistsAsync();
}