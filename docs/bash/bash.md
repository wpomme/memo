# bash

## Tips
Control + l(C-l)で画面にある出力を消去できる  
詳しくはman bash のCommands for Moving を参照  
その他、(M-f)と(M-b)で単語単位で前後に移動できる、など  

## 履歴展開 (History Expansion)
- 直前のコマンドを実行する
```bash
$ !!
```

- 最近のstringで始まるコマンドを実行する
```bash
$ !string
```

## 条件付きリスト(conditional list)
### &&演算子
- cd dir が成功した場合にのみ、touch new.txt を実行
```bash
$ cd dir && touch new.txt
```

## ||演算子
- cd dir が失敗した場合、エラーコード1 で終了する
```bash
$ cd dir || exit 1
```

## 終了コード
- $? で確認できる。0 なら成功、1 なら失敗
```bash
$ echo $?
```

## プロセス置換 (Process Substitution)
- 構文
    - list の実行結果を、ファイルのように扱うことができる
```bash
<(list)
```
または、
```bash
>(list)
```

### 例
- diff などの、引数としてファイルを要求するコマンドに使用する
```bash
diff <(list) <(list)
```

## 補足
プロセス置換は、実行されたコマンドの出力をファイル記述子と関連づける。echo を使うと関連づけられたファイル記述子の番号が確認できる。
```bash
$ echo <(ls)
```
