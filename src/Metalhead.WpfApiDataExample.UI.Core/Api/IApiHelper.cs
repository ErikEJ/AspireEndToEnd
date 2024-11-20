namespace Metalhead.WpfApiDataExample.UI.Core.Api;

public interface IApiHelper
{
    ValueTask<string> Get(string endpoint);
    ValueTask<string> Post(string endpoint, string data);
}