#!/bin/sh
set -e
# Rails に対応したファイル server.pid が存在していれば削除
rm -f /help_doctor/tmp/pids/server.pid
# コンテナの実行(へ戻る)
exec "$@"
