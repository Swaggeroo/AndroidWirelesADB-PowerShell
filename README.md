# AndroidWirelesADB-PowerShell
A PowerShell Script that enables wireles coding with Android
- **Download:** https://github.com/Swaggeroo/AndroidWirrelesADB-PowerShell/releases/latest/download/WirrelessAndroid.ps1

## English:
This script works after the concept of: https://developer.android.com/studio/command-line/adb

### Requirements:
1. Your computers security guidelines have to be set to RemoteSigned
    (Set-ExecutionPolicy RemoteSigned) -> Enter an 'a' to change it for everything
2. Android Studio (or a similar program) with Android Platform tools installed (adb has to be in 'C:\users\[user]\appdata\local\Android\Sdk\platform-tools\adb.exe'
    or you have to change the line 'cd (Path)' in the script to the path of the file 'adb.exe'.)
3. Your smartphone must have been connected to the computer at least once before.
4. Your smartphone has to permanently trust the computer
5. If possible, also allow Debugging when the 'only-charging'-Mode of your phone is active

  - Download Adroid Studio: https://developer.android.com/studio
  - Download adb(Platform-Tools): https://developer.android.com/studio/releases/platform-tools
    - **!Can also be installed in Android Studio!**
    
### How-To-Use:
1. Connect smartphone via USB to your computer
2. Launch script
3. Wait until your computer starts to ping your smartphone 
4. Disconnect smartphone
5. Now you can code wireless!

### Bug-Fixing:
- **The error-message 'daemon not running' is normal**
- Device is offline ->  Check wether your phone is connected to the same network as your computer!
- No Devices found -> Check wether your smartphone trusts your computer, then restart the script.

## Deutsch:
Dieses Script funktioniert nach dem Konzept von: https://developer.android.com/studio/command-line/adb

### Anforderungen:
1. PC´s Scurity Richtlinien auf RemoteSigned stehen 
  (Set-ExecutionPolicy RemoteSigned) -> a eigeben um es für alle zu ändern
2. Androidstudio(oder anderes Programm) mit Android Platform tools (adb muss in `C:\users\[benutzer]\appdata\local\Android\Sdk\platform-tools\adb.exe` liegen
  oder die Zeile `cd (Path)` im Skript ändern zu dem Ordner wo die adb.exe liegt)
3. Handy muss schonmal verbunden worden sein
4. Handy muss den Schlüssel von dem PC schon immer vertrauen
5. Am besten ist Debugging auch im nur Laden Modus aktiv

  - Download Adroid Studio: https://developer.android.com/studio
  - Download adb(Platform-Tools): https://developer.android.com/studio/releases/platform-tools
    - **!Kann auch in Adroid Studio installiert werden!**

### Ausführung:
1. Handy mit USB anschließen
2. Script starten
3. Warten bis es anfängt das Handy anzupingen
4. Handy abziehen
5. Wireless Coden

### Bug-Fixing:
- **Die Fehler, dass die adb nicht gestartet, ist ist normal!**
- Device is offline -> Überprüfen ob Handy mit gleichen Netzwerk verbunden ist
- No Devices found -> Überprüfen ob Handy schon Schlüssel von PC trusted, dann script neu starten
