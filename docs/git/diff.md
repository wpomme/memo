- stagedしたファイルのdiff
```bash
git diff --cached
```

- ファイル名だけ取得
```bash
git diff --name-only
```

- git diff を標準出力に書き出す
```bash
git --no-pager diff
```

- なお、`--no-pager`は`git`コマンド全体で使える。
```bash
git --no-pager <subcommand> <options>
```
