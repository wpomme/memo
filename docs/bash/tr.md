- tr
The tr utility copies the standard input to the standard output with substitution or deletion of selected characters.

- よく使うコマンド
```bash
# 標準入力から受けた空白を改行に変換して標準出力に渡す
tr ' ' '\n'

# 例
echo "foo bar baz" | tr ' ' '\n'

> foo
> bar
> baz
```
