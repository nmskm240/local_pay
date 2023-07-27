@echo off
setlocal

REM フックスクリプトのパス
set hooks_path=./scripts/.githooks/

REM gitコマンドでcore.hooksPathを設定
git config core.hooksPath %hooks_path%
