@ECHO off
cls
:start
ECHO.
ECHO 1. Google Chrome
ECHO 2. Mozilla Firefox
ECHO 3. Safari
set /p choice=Inputkan menu :
rem if not '%choice%'=='' set choice=%choice:~0;1% ( don`t use this command, because it takes only first digit in the case you type more digits. After that for example choice 23455666 is choice 2 and you get "bye"
if '%choice%'=='1' goto chrome
if '%choice%'=='2' goto mozilla
if '%choice%'=='3' goto safari
if not '%choice%'=='' ECHO "%choice%" gagal
ECHO.
goto start
:chrome
if exist chrome.exe (
			start /wait /b chrome.exe --allow-file-access-from-files %~dps0index.html
			msg * Chrome Tersedia
			goto Continue1
		      )
else
		      (
			msg * Chrome Portable Tidak tersedia
		      )
goto end
:mozilla
if exist firefox.exe (
			start /wait /b firefox.exe %~dps0index.html
			msg * Firefox Tersedia
			goto Continue1
		      )
else
		      (
			msg * Firefox Portalbe Tidak tersedia
		      )
goto end
:safari
if exist safari.exe (
			start /wait /b safari.exe %~dps0index.html
			msg * Safari Tersedia
			goto Continue1
		      )
else
		      (
			msg * Safari Portalbe Tidak tersedia
		      )
goto end
:end
pause
exit