- uniq: 文字の重複排除
    - 他のコマンドとsort と組み合わせて使うことが多い
```bash
# 例: コマンド履歴の集計
fc -ln 1 | sort | uniq -c | sort
```
