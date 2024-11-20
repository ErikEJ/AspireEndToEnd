using System.Diagnostics;

namespace Metalhead.WpfApiDataExample.UI.Wpf;

public class DebugLogger : ILogger
{
    public void Log(string message)
    {
        Debug.WriteLine(message);
    }
}
