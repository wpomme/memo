- 基本的なログ表示
```bash
git log --oneline
```

- ブランチの分岐を視覚的に表示
```bash
git log --graph --oneline --all
```

- 特定のファイルの変更履歴
```bash
git log --follow -- filename
```

- developにはない現在のブランチのみのコミットを表示する
```bash
git log develop..HEAD

# -p で差分も確認できる
git log -p develop..HEAD

# ここからmergeコミットを取り除くには
git log --no-merges develop..HEAD

# tig でも同様
tig -p --no-merges develop..HEAD
```
