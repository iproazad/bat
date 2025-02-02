echo off
SetLocal EnableExtensions EnableDelayedExpansion
 cls 
adb kill-server 
adb devices 
adb start-server 
goto RoutineX
:resume1
adb shell rm -rf /data/data/*.log > nul 2>&1 
adb shell mv -f -i /data/data/com.vng.pubgmobile/lib /data/data/com.vng.pubgmobilelib > nul 2>&1
adb shell rm -rf /data/data/com.vng.pubgmobile > nul 2>&1 
adb shell mkdir /data/data/com.vng.pubgmobile > nul 2>&1
adb shell mkdir /data/data/com.vng.pubgmobile/shared_prefs > nul 2>&1
adb shell mv -f -i /data/data/com.vng.pubgmobilelib /data/data/com.vng.pubgmobile/lib > nul 2>&1
adb shell chmod -R 777 /data/data/com.vng.pubgmobile/shared_prefs > nul 2>&1 
adb push %TEMP%\device_id.xml /data/data/com.vng.pubgmobile/shared_prefs > nul 2>&1
adb shell rm -rf /data/data/*.log > nul 2>&1 
adb shell mv -f -i /data/data/com.tencent.ig/lib /data/data/com.tencent.iglib > nul 2>&1
adb shell rm -rf /data/data/com.tencent.ig > nul 2>&1 
adb shell mkdir /data/data/com.tencent.ig > nul 2>&1
adb shell mkdir /data/data/com.tencent.ig/shared_prefs > nul 2>&1

adb shell mv -f -i /data/data/com.tencent.iglib /data/data/com.tencent.ig/lib > nul 2>&1
adb shell chmod -R 777 /data/data/com.tencent.ig/shared_prefs > nul 2>&1 
adb push %TEMP%\device_id.xml /data/data/com.tencent.ig/shared_prefs > nul 2>&1
::Handle AndroidID here, Change
echo "Your Old Device ID :"
adb shell settings get secure android_id
set "IDD="
for /L %%i in (1,1,16) do call :Pseudo
adb shell settings put secure android_id %IDD%
adb shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:%IDD%
adb shell settings get secure android_id>>c:/Androididbackup
 
adb shell setprop ro.mac_address %IDD%
adb shell setprop ro.product.device %IDD%
adb shell setprop ro.product.brand %IDD%
adb shell setprop ro.product.model %IDD%
adb shell setprop ro.product.name %IDD%
adb shell setprop ro.product.manufacturer %IDD%
adb shell setprop ro.android_id %IDD%
adb shell setprop net.hostname %IDD%
adb shell setprop gaid %IDD%
adb shell setprop android.device.id %IDD%
adb shell setprop ro.serialno %IDD%
adb shell setprop ro.runtime.firstboot %IDD%
 
echo "Your New Device ID :"
echo %IDD%
goto EmptyRecords
:resume2
echo Done
timeout /t 3
goto :eof
:EmptyRecords
echo Cleaning ID related files please wait 2 minutes
adb kill-server > nul 2>&1 
adb start-server > nul 2>&1 
adb remount > nul 2>&1 
adb shell mv -f -i /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/paks /data/media/0/paks > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/lightdata /data/media/0/lightdata > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /data/media/0/SrcVersion.ini > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames/active.sav /data/media/0/active.sav > nul 2>&1
adb shell rm -rf /data/media/0/Android/.system_android_l2 > nul 2>&1
adb shell rm -rf /data/media/0/Android/data/.um > nul 2>&1
adb shell rm -rf /data/media/0/Android/obj > nul 2>&1
adb shell rm -rf /data/media/0/Android/data/com.vng.pubgmobile > nul 2>&1 
adb shell rm -rf /data/media/0/.backup > nul 2>&1
adb shell rm -rf /data/media/0/backups > nul 2>&1
adb shell rm -rf /data/media/0/.backups > nul 2>&1
adb shell rm -rf /data/media/0/puex_dfaa3cad.dat > nul 2>&1 
adb shell rm -rf /data/media/0/*.dat > nul 2>&1
adb shell rm -rf /data/media/0/*.log > nul 2>&1 
adb shell rm -rf /data/media/0/.zzz > nul 2>&1
adb shell rm -rf /data/media/0/BGMI > nul 2>&1
adb shell rm -rf /data/media/0/mfcache > nul 2>&1
adb shell rm -rf /data/media/0/tencent > nul 2>&1
adb shell rm -rf /data/media/0/Download > nul 2>&1
adb shell rm -rf /data/media/0/music > nul 2>&1
adb shell rm -rf /data/media/0/pictures > nul 2>&1
adb shell rm -rf /data/media/0/dcim > nul 2>&1
adb shell touch /data/media/0/.backups > nul 2>&1
adb shell touch /data/media/0/Download > nul 2>&1
adb shell touch /data/media/0/music > nul 2>&1
adb shell touch /data/media/0/pictures > nul 2>&1
adb shell touch /data/media/0/dcim > nul 2>&1
adb shell touch /data/media/0/backups > nul 2>&1
adb shell touch /data/media/0/BGMI > nul 2>&1
adb shell touch /data/media/0/mfcache > nul 2>&1
adb shell touch /data/media/0/tencent > nul 2>&1
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/config > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/config/android > nul 2>&1 
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/logs > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mmkv > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/tabledatas > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/intermediate > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/tgpa > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/log > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/hawk_data > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/files/programbinarycache > nul 2>&1
adb shell touch /data/media/0/Android/data/com.vng.pubgmobile/cache > nul 2>&1
adb shell mv -f -i /data/media/0/lightdata /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/lightdata > nul 2>&1
adb shell mv -f -i /data/media/0/SrcVersion.ini /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini > nul 2>&1
adb shell mv -f -i /data/media/0/paks /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/paks > nul 2>&1
adb shell mv -f -i /data/media/0/active.sav /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames/active.sav > nul 2>&1
adb shell touch /data/media/0/vampy > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/paks /data/media/0/paks > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/lightdata /data/media/0/lightdata > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /data/media/0/SrcVersion.ini > nul 2>&1
adb shell mv -f -i /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames/active.sav /data/media/0/active.sav > nul 2>&1
adb shell rm -rf /data/media/0/Android/.system_android_l2 > nul 2>&1
adb shell rm -rf /data/media/0/Android/data/.um > nul 2>&1
adb shell rm -rf /data/media/0/Android/obj > nul 2>&1
adb shell rm -rf /data/media/0/Android/data/com.tencent.ig > nul 2>&1 
adb shell rm -rf /data/media/0/.backup > nul 2>&1
adb shell rm -rf /data/media/0/backups > nul 2>&1
adb shell rm -rf /data/media/0/.backups > nul 2>&1
adb shell rm -rf /data/media/0/puex_dfaa3cad.dat > nul 2>&1 
adb shell rm -rf /data/media/0/*.dat > nul 2>&1
adb shell rm -rf /data/media/0/*.log > nul 2>&1 
adb shell rm -rf /data/media/0/.zzz > nul 2>&1
adb shell rm -rf /data/media/0/BGMI > nul 2>&1
adb shell rm -rf /data/media/0/mfcache > nul 2>&1
adb shell rm -rf /data/media/0/tencent > nul 2>&1
adb shell rm -rf /data/media/0/Download > nul 2>&1
adb shell rm -rf /data/media/0/music > nul 2>&1
adb shell rm -rf /data/media/0/pictures > nul 2>&1
adb shell rm -rf /data/media/0/dcim > nul 2>&1
adb shell touch /data/media/0/.backups > nul 2>&1
adb shell touch /data/media/0/Download > nul 2>&1
adb shell touch /data/media/0/music > nul 2>&1
adb shell touch /data/media/0/pictures > nul 2>&1
adb shell touch /data/media/0/dcim > nul 2>&1
adb shell touch /data/media/0/backups > nul 2>&1
adb shell touch /data/media/0/BGMI > nul 2>&1
adb shell touch /data/media/0/mfcache > nul 2>&1
adb shell touch /data/media/0/tencent > nul 2>&1
adb shell mkdir /data/media/0/Android/data/com.tencent.ig > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/config > nul 2>&1 
adb shell mkdir /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/config/android > nul 2>&1 
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/logs > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mmkv > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/tabledatas > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/intermediate > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/tgpa > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/log > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/hawk_data > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/files/programbinarycache > nul 2>&1
adb shell touch /data/media/0/Android/data/com.tencent.ig/cache > nul 2>&1
adb shell mv -f -i /data/media/0/lightdata /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/lightdata > nul 2>&1
adb shell mv -f -i /data/media/0/SrcVersion.ini /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini > nul 2>&1
adb shell mv -f -i /data/media/0/paks /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/paks > nul 2>&1
adb shell mv -f -i /data/media/0/active.sav /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/savegames/active.sav > nul 2>&1
adb shell touch /data/media/0/vampy > nul 2>&1
goto resume2
 
:Pseudo
set /a x=%random% %% 22 
set IDD=%IDD%!string:~%x%,1!
goto :eof
 
:RoutineX
set "string=abcdefABCDEF0123456789"
set "rr="
for /L %%i in (1,1,4) do call :Pseudorr
set "ss="
for /L %%i in (1,1,4) do call :Pseudoss
set "tt="
for /L %%i in (1,1,4) do call :Pseudott
set "uu="
for /L %%i in (1,1,4) do call :Pseudouu
set "vv="
for /L %%i in (1,1,4) do call :Pseudovv
set "ww="
for /L %%i in (1,1,4) do call :Pseudoww
set "xx="
for /L %%i in (1,1,4) do call :Pseudoxx
set "yy="
for /L %%i in (1,1,4) do call :Pseudoyy
set "h1=^<?xml version='1.0' encoding='utf-8' standalone='yes' ?^>"
set "h2=^<map^>"
set "h3=    ^<string name="install"^>%rr%%ss%-%tt%-%uu%-%vv%-%ww%%xx%%yy%^</string^>"
set "h4=    ^<string name="uuid"^>%yy%%xx%%ww%%vv%%uu%%tt%%ss%%rr%^</string^>"
set "h5=    ^<string name="random"^>^</string^>"
set "h6=^</map^>"
DEL %TEMP%\device_id.xml
echo %h1%>>%TEMP%\device_id.xml
echo %h2%>>%TEMP%\device_id.xml
echo %h3%>>%TEMP%\device_id.xml
echo %h4%>>%TEMP%\device_id.xml
echo %h5%>>%TEMP%\device_id.xml
echo %h6%>>%TEMP%\device_id.xml
goto resume1
 
:Pseudorr
set /a x=%random% %% 22 
set rr=%rr%!string:~%x%,1!
goto :eof
 
:Pseudoss
set /a x=%random% %% 22 
set ss=%ss%!string:~%x%,1!
goto :eof
 
:Pseudott
set /a x=%random% %% 22 
set tt=%tt%!string:~%x%,1!
goto :eof
 
:Pseudouu
set /a x=%random% %% 22 
set uu=%uu%!string:~%x%,1!
goto :eof
 
:Pseudovv
set /a x=%random% %% 22 
set vv=%vv%!string:~%x%,1!
goto :eof
 
:Pseudoww
set /a x=%random% %% 22 
set ww=%ww%!string:~%x%,1!
goto :eof
 
:Pseudoxx
set /a x=%random% %% 22 
set xx=%xx%!string:~%x%,1!
goto :eof
 
:Pseudoyy
set /a x=%random% %% 22 
set yy=%yy%!string:~%x%,1!
goto :eof