# AndroidWirrelesADB-PowerShell
A PowerShell Script that enables wirreles coding with Android

## English:
**Comming Soon**

## Deutsch:
Dieses Script funktioniert nach dem Konzept von: https://developer.android.com/studio/command-line/adb

### Anforderungen:
1. PC´s Scurity Richtlinien auf RemoteSigned stehen 
  (Set-ExecutionPolicy RemoteSigned) -> a eigeben um es für alle zu ändern
2. Androidstudio(oder anderes Programm) mit Android Platform tools (adb muss in C:\users\[benutzer]\appdata\local\Android\Sdk\platform-tools\adb.exe liegen)
  oder die Zeile cd (Path) ändern zu dem Ordner wo die adb.exe liegt
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
- **Die Fehler das die adb nicht gestartet ist ist normal!**
- Device is offline -> Überprüfen ob Handy mit gleichen Netzwerk verbunden ist
- No Devices found -> Überprüfen ob Handy schon Schlüssel von PC trusted, dann script neu starten
