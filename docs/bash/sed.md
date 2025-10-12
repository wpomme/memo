## オプション
- p: sedで変換される前の文字列も表示する
- i: 拡張子を指定して上書き(BSD version) -> macのsedはBSD  
    -> 空の文字列を指定すればバックアップなしの上書きになる  
    上書き(GNU version)  

## 例
- ファイルの一括リネーム
```bash
ls | sed "p;s/test/foo-test/" | xargs -n 2 mv
```

- mac で文字列を置換して上書き
```
sed -i '' 's/foo/bar/g'
```
