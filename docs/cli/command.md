- command (bash builtin command)
    - ドキュメントはman bash -> SHELL BUILTIN COMMANDS のところの項目をみる

## 
```
# シェル関数やエイリアスを無視して、元のコマンドや、外部プログラムを直接実行するために使う
## 例
## エイリアスなしのls を実行する
command ls

## -v エイリアスなどがあれば、その情報を表示する
command -v ls
> alias ls='ls -GpF'



## -V そのコマンドが組み込み関数かどうかの情報を取得する
### 例1: cd
command -V cd
> cd is a shell builtin

### 例2: gs
command -V gs
gs is an alias for git status
```
