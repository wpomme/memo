- Zsh のコマンド履歴
    - fc コマンドを使う
    - コマンド履歴はtmux だとウィンドウごとである
    - ドキュメントはman zshbuiltins からfc で検索すること
```zsh
# 直前のコマンド履歴を見る
# fc -l

# 数が指定できる
# fc -l 500

# 全ての履歴を番号なしで表示する
fc -ln 1

## コマンド履歴の集計
fc -ln 1 | sort | uniq -c | sort

## コマンドの文字列検索
fc -lm "git*"
```
