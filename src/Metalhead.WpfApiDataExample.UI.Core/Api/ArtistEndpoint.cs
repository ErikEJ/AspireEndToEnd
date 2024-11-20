using System.Text.Json;

using Metalhead.WpfApiDataExample.UI.Core.Models;

namespace Metalhead.WpfApiDataExample.UI.Core.Api;

public class ArtistEndpoint(ApiHelper apiHelper) : IArtistEndpoint
{
    private ApiHelper ApiHelper { get; } = apiHelper;

    public async Task<IEnumerable<Artist>?> GetArtistsAsync()
    {
        string response = await ApiHelper.Get("api/Artist");

        var root = JsonSerializer.Deserialize<Rootobject>(response);

        return root?.Value ?? null;
    }
}
