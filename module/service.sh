#!/system/bin/sh
# Автообновление: после загрузки и дальше каждые 6 часов проверяет, не пора ли обновить списки.
MODDIR=${0%/*}
(
  until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
  sleep 90
  while :; do
    MODDIR="$MODDIR" sh "$MODDIR/system/bin/nullads" autoupdate >/dev/null 2>&1
    sleep 21600
  done
) &
