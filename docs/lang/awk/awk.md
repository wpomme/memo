## awkの基本
パターンにマッチした行に対してアクションを実行する
```
pattern1 { action1 }
pattern2 { action2 }
```

## ビルトイン関数
- substr
str の一部を抽出する
```
substr(str, start[, length])
```

## オプション
- `-v`: awkから参照可能な変数を指定する

## 例
- 長い行を削除してファイルを表示する
```bash
cat error.log | awk 'length($0) <= 100 { print $0 }'
```
