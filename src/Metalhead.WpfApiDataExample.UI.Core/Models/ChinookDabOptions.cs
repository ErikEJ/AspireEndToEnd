using System.ComponentModel.DataAnnotations;

namespace Metalhead.WpfApiDataExample.UI.Core.Models;

public class ChinookDabOptions
{
    public const string Chinook = "Chinook";

    [Required]
    public required string ApiBaseUrl { get; set; }
}
