## オプション
- `-n`: 行番号を表示
- `-H`: ファイル名を表示
### 例
- docsフォルダのファイルを一括で`grep`する場合
```bash
find docs -type f | xargs -I{} grep --color=auto -nH awk {}
```
