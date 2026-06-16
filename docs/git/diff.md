## git diff: 差分を取る
- 例
```bash
# stagedしたファイルのdiff
git diff --cached

# ファイル名だけ取得
git diff --name-only

# git diff を標準出力に書き出す
git --no-pager diff

# なお、`--no-pager`は`git`コマンド全体で使える。
git --no-pager <subcommand> <options>

# 直前のコミットとdiffをとる
# patchファイルを作成するときなどに使う
git diff HEAD^ HEAD

# patchファイルを作成
git diff HEAD^ HEAD > patch.diff
```
