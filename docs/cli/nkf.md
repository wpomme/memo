- nkf: 文字コードの判定・変換
```bash
# 文字コードを推測する
nkf --guess <filename>

# 例 ls のドキュメントの文字コード
nkf --guess <(man ls)
UTF-8 (LF)

# ISO-2022-JP (JIS code) 形式のテキストを表示する
nkf -J <filename>
```
