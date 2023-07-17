### ADB

General:
```
adb start-server             -- start ADB server
adb kill-server              -- stop ADB server
adb devices                  -- list of connected devices
```

App control:
```
adb install <APK>                   -- install application from PC
adb uninstall <package>             -- uninstall all with package name
adb shell am start -d <deep-link>   -- handle deep link on connected devices
```
