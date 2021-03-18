Write-Host "Connecting Wirrelessly"
cd $env:LOCALAPPDATA\Android\Sdk\platform-tools\
Write-Host "Kill ADB"
.\adb.exe kill-server
Write-Host "Start ADB"
.\adb.exe devices
Write-Host "Phone starting listening on 5555"
.\adb.exe tcpip 5555
Start-Sleep -s 5
Write-Host "Getting IP-Adress"
.\adb.exe shell ip addr show wlan0 > temp.txt
Start-Sleep -s 0.5
$strg = type ./temp.txt | FIND """inet """
$ipAdress = $strg.Substring(9,$strg.LastIndexOf("/")-9)
Write-Host "IP of Device:"
Write-Host $ipAdress
Write-Host "Conecting to Phone Wirrelessly"
.\adb.exe connect $ipAdress
Write-Host Pinging Phone continuously so it wont go into wifi-sleep
$i = 0
while($true){
    $time = Get-Date
    Write-Host Ping "(" $time ")"
    $pingResponse = ping -n 1 -a $ipAdress
    Write-Host $pingResponse | FIND """Ping"""
    $pingLoss = $pingResponse | FIND /C """Verloren = 1"""
    if($pingLoss -ge 1){
        $i = $i+1
    }
    if($i -ge 5){
        Write-Host 5 pings failed aborting
		pause
        exit
    }
    Start-Sleep -s 20
}