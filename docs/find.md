# find
## basic
### オプション
-type: 検索するファイルの種別を指定する
       fが一般のファイル、dがディレクトリ

-name: 検索するファイルの名前を指定する
       ファイル名を部分一致で検索するなら
       "*<file-name>*"のように検索する
       完全一致なら<file-name>で問題ない

-print0: 改行の代わりにヌル文字を使って入力文字列を区切る

### 例
```
find . -type f -name "*aaa*"
find . type f -name "*.md"
find src -type d -name components
find . -maxdepth 1 -print0
```

- 実行可能なファイルを検索する
```
find . -perm -a+x -type f
```
