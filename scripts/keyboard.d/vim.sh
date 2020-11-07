#!/bin/sh

# 交换 CapsLock 和 Esc

xmodmap - <<EOF
remove Lock = Caps_Lock
keysym Escape = Caps_Lock
keysym Caps_Lock = Escape
add Lock = Caps_Lock
EOF
echo "已经成功交换 Caps_Lock 和 Escape 键。"
