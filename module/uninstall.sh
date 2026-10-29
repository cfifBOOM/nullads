#!/system/bin/sh
# Удаляем кэш списков; настройки и белый/чёрный списки остаются в /data/adb/nullads.
rm -rf /data/adb/nullads/cache /data/adb/nullads/build /data/adb/nullads/.lock
