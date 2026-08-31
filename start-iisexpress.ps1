$iis = "C:\Program Files\IIS Express\iisexpress.exe"
$root = "C:\Users\Rafie\Desktop\Backup site\AnharEPC.ir\AnharEPC.ir New\AnharEPC.ir New"

Get-Process iisexpress -ErrorAction SilentlyContinue | Stop-Process -Force
Start-Sleep -Seconds 1

$sites = @(
    @{ Path = Join-Path $root "httpdocs"; Port = 8080 },
    @{ Path = Join-Path $root "Fa"; Port = 8081 },
    @{ Path = Join-Path $root "Ar"; Port = 8082 }
)

foreach ($site in $sites) {
    Start-Process -FilePath $iis -ArgumentList @(
        '/path:"' + $site.Path + '"',
        '/port:' + $site.Port,
        '/clr:v2.0',
        '/systray:false'
    ) -WindowStyle Hidden
}
