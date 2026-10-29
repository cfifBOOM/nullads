# NullAds — установка (KernelSU / SukiSU / APatch / Magisk)
ui_print " "
ui_print "  NullAds — блокировка рекламы через hosts"
ui_print " "
CONF_DIR=/data/adb/nullads
mkdir -p "$CONF_DIR/cache"
[ -f "$CONF_DIR/config" ] || printf '# NullAds — настройки (можно править руками)\nLEVEL=pro\nEXTRAS=""\nAUTO_DAYS=7\nCUSTOM=""\n' > "$CONF_DIR/config"
[ -f "$CONF_DIR/allow.txt" ] || printf '# Белый список: по домену на строку. *.example.com — домен со всеми поддоменами\n' > "$CONF_DIR/allow.txt"
[ -f "$CONF_DIR/block.txt" ] || printf '# Чёрный список: по домену на строку\n' > "$CONF_DIR/block.txt"
set_perm "$MODPATH/system/bin/nullads" 0 2000 0755

OLD=/data/adb/modules/nullads/system/etc/hosts
if [ -s "$OLD" ] && grep -q '^# NullAds' "$OLD"; then
  ui_print "- Переношу текущий hosts из прошлой версии"
  cat "$OLD" > "$MODPATH/system/etc/hosts"
else
  ui_print "- Скачиваю списки…"
  if MODDIR="$MODPATH" NULLADS_INSTALL=1 sh "$MODPATH/system/bin/nullads" update; then
    ui_print "- Списки готовы"
  else
    ui_print "! Скачать не вышло. После перезагрузки выполни: su -c nullads update"
  fi
fi

set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/system/bin/nullads" 0 2000 0755
set_perm "$MODPATH/system/etc/hosts" 0 0 0644 u:object_r:system_file:s0
ui_print " "
ui_print "- Перезагрузи телефон, чтобы подменить hosts."
ui_print "- Управление: su -c nullads, кнопка «Действие» или WebUI модуля."
