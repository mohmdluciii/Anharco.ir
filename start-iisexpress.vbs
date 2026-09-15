Set sh = CreateObject("Wscript.Shell")
ps1 = "C:\Users\Rafie\Desktop\Backup site\AnharEPC.ir\AnharEPC.ir New\AnharEPC.ir New\start-iisexpress.ps1"
sh.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File """ & ps1 & """", 0, False
