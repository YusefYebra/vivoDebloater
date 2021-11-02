@echo off
echo vivo Debloater by Ayush Pandit and Yusef Yebra
echo.
adb kill-server
adb start-server
echo.
echo To cancel, press the number key 7
echo.

:menu
echo.
echo Choose an option:
echo.
echo 1 - Remove vivo bloat
echo 2 - Disable system updates ( This Will disable your software update From vivo)
echo 3 - Exit
echo.
set /p choose=Select your option : 
if %choose%==1 goto remove_vivoapp
if %choose%==2 goto System_update
if %choose%==3 goto prog_exit
echo.
:remove_vivoapp
echo.
echo Deleting "Browser"
adb shell pm uninstall -k --user 0 com.vivo.browser
echo Deleting "EasyShare"
adb shell pm uninstall -k --user 0 com.vivo.easyshare
echo Deleting "Face beauty for video call"
adb shell pm uninstall -k --user 0 com.vivo.video.floating
echo Deleting "Facebook Services"
adb shell pm uninstall -k --user 0 com.facebook.services
echo Deleting "Facebook App Installer"
adb shell pm uninstall -k --user 0 com.facebook.system
echo Deleting "Facebook App Manager"
adb shell pm uninstall -k --user 0 com.facebook.appmanager
echo Deleting "iManager"
adb shell pm uninstall -k --user 0 com.iqoo.secure
echo Deleting "Kids Mode"
adb shell pm uninstall -k --user 0 com.vivo.childrenmode
echo Deleting "My House"
adb shell pm uninstall -k --user 0 com.bbk.scene.indoor
echo Deleting "Security Center"
adb shell pm uninstall -k --user 0 com.vivo.safecenter
echo Deleting "Sound localization training center"
adb shell pm uninstall -k --user 0 com.vivo.gametrain
echo Deleting "Themes"
adb shell pm uninstall -k --user 0 com.bbk.theme
echo Deleting "themeRes"
adb shell pm uninstall -k --user 0 com.bbk.theme.resources
echo Deleting "V-Appstore"
adb shell pm uninstall -k --user 0 com.vivo.appstore
echo Deleting "vivo.com"
adb shell pm uninstall -k --user 0 com.vivo.website
echo Deleting "vivo account"
adb shell pm uninstall -k --user 0 com.bbk.account
echo Deleting "vivoCloud"
adb shell pm uninstall -k --user 0 com.bbk.cloud
echo Deleting "vivo Doc Reader"
adb shell pm uninstall -k --user 0 com.yozo.vivo.office
echo Deleting "vivoshare"
adb shell pm uninstall -k --user 0 com.vivo.share
echo Deleting "Jovi Home Service Engine"
adb shell pm uninstall -k --user 0 com.vivo.assistant
echo Deleting "Ultra Game Mode"
adb shell pm uninstall -k --user 0 com.vivo.gamecube
echo.
goto :menu
exit

:System_update
echo.
echo Deleting "System update"
adb shell pm uninstall -k --user 0 com.bbk.updater
echo.
goto :menu
exit

echo.
goto :menu
exit

: prog_exit
exit