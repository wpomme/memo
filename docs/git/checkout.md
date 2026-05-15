## `git checkout` から `git switch`, `git restore` へ
- `git checkout` の役割
    - ブランチの切り替え
    - 新規ブランチの作成
    - ファイルの復元
    - コミットのチェックアウト

    -> これらを`git switch`か`git restore`へ

- `git switch`: ブランチの操作
```bash
# ブランチの切り替え
git switch <branch-name>

# 新規ブランチを作成して切り替え
git switch -c <branch-name>
```

- `git restore`: ファイルの復元
```bash
# staged ではないファイルを元に戻す
git restore <filename>

# staged のファイルを not staged に戻す
git restore --staged <filename>
```
