using Metalhead.WpfApiDataExample.UI.Core.Models;

namespace Metalhead.WpfApiDataExample.UI.Core.Api;

public class ApiHelper : IApiHelper
{
    private readonly HttpClient _httpClient;

    public ApiHelper(HttpClient httpClient, ChinookDabOptions weatherForecastOptions)
    {
        _httpClient = httpClient;
        _httpClient.BaseAddress = new Uri(weatherForecastOptions.ApiBaseUrl);
    }

    public async ValueTask<string> Get(string endpoint)
    {
        try
        {
            HttpResponseMessage response = await _httpClient.GetAsync(endpoint).ConfigureAwait(false);
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public async ValueTask<string> Post(string endpoint, string data)
    {
        HttpContent content = new StringContent(data);
        HttpResponseMessage response = await _httpClient.PostAsync(endpoint, content).ConfigureAwait(false);
        response.EnsureSuccessStatusCode();
        return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
    }
}
