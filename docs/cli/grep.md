## grep: 文字列検索

- 例
```bash
# docsフォルダのファイルを一括で`grep`する場合
find docs -type f | xargs -I{} grep --color=auto -nH awk {}
```

- オプション
    - `-n`: 行番号を表示
    - `-H`: ファイル名を表示
