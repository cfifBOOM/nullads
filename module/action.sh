#!/system/bin/sh
# Кнопка «Действие» в менеджере: обновить списки и показать итог.
MODDIR=${0%/*}
MODDIR="$MODDIR" sh "$MODDIR/system/bin/nullads" update
echo
MODDIR="$MODDIR" sh "$MODDIR/system/bin/nullads" status
