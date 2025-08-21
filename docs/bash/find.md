# find
## オプション
-print0: 改行の代わりにヌル文字を使って入力文字列を区切る

### 例
- 名前に"foo"を含むファイルを検索する
```bash
find . -type f -name "*foo*"
```

- 実行可能なファイルを検索して、中身の文字数などを確認する
```bash
find . -perm -a+x -type f -exec wc {} \;
```
