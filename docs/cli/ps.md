## オプション
a - 端末のあるプロセス表示
c - 実行コマンドのパスを省略する
u - 実行ユーザー名表示
x - 端末のないプロセス表示
e - 環境変数を表示

## 例
- 子プロセスの確認(PPID)
```bash
$ aux -o ppid
```

or

```bash
$ aux -ef
```

- 実行プロセスの集計
```
$ ps aux | cut -w -f11 | xargs basename | sort | uniq -c | sort -r
```

- basename を使わなくてもcオプションで同じことができる
```
$ ps acux | cut -w -f11 | sort | uniq -c | sort -r
```
