[reflection.assembly]::loadwithpartialname('System.Windows.Forms') | Out-Null; >".\content\ps\upd-available.ps1"
[reflection.assembly]::loadwithpartialname('System.Drawing') | Out-Null; >>".\content\ps\upd-available.ps1"
$notify = new-object system.windows.forms.notifyicon; >>".\content\ps\upd-available.ps1"
$notify.icon = [System.Drawing.SystemIcons]::Warning; >>".\content\ps\upd-available.ps1"
$notify.visible = $true;$notify.showballoontip(10,'Newten','New Update Available!','Warning'); >>".\content\ps\upd-available.ps1"
Start-Sleep -s 10;
$notify.Dispose()
