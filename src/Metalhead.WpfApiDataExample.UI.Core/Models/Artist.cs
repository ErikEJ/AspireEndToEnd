using System.Text.Json;
using System.Text.Json.Serialization;

namespace Metalhead.WpfApiDataExample.UI.Core.Models;

public class Artist
{
    public int ArtistId { get; set; }
    public string? Name { get; set; }
}

public class Rootobject
{
    [JsonPropertyName("value")]
    public Artist[] Value { get; set; }
    [JsonPropertyName("nextLink")]
    public string? NextLink { get; set; }
}
