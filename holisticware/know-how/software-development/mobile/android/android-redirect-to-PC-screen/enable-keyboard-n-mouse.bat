@ echo off
set ADB="%PROGRAMFILES%"\Android\android-sdk-windows\platform-tools\adb.exe

%ADB% devices
 javaws androidscreencast.jnlp
 
%ADB% shell

adb shell
su
chmod 777 /data/dalvik-cache
cd /data/dalvik-cache
chmod 777 ./

pause