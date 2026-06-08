- fix conflict
```bash
$ vimdiff  # alias vimdiff="git mergetool -t vimdiff"
```

- マージしてきた方のブランチにコードを合わせる場合
```bash
# マージしてきた方のブランチを採用する
# 注意: file に. を指定すると、マージしてきた方のブランチを全て採用してしまう。
# file は個別に指定すること
git restore --theirs <file>

# または、次のコマンドで取り込む
# --staged と --worktree の両方を指定してgit add <file> と同様の動作をする
git restore --source=MERGE_HEAD --staged --worktree <file>

# 現在のブランチ(HEAD)の方を採用する
git restore --ours <file>
```

- 特殊なHEADリファレンス
    - `HEAD`: 現在チェックアウトしているコミット
    - `MERGE_HEAD`: マージ中の相手ブランチの先頭コミット
    - `ORIG_HEAD`: merge/rebase/reset 実行前の HEAD の位置
    - `FETCH_HEAD`	直前の git fetch で取得したリモートの先頭
    - `CHERRY_PICK_HEAD`: cherry-pick 中の対象コミット
    - `REBASE_HEAD`: rebase 中に現在適用しているコミット

- コンフリクトマーカーの見方
```diff
<<<<<<< HEAD
現在のブランチの内容（ours / stage 2）
||||||| abc1234  ← diff3 スタイルの場合のみ表示
共通祖先の内容（base / stage 1）
=======
マージしてくるブランチの内容（theirs / stage 3）
>>>>>>> feature-branch
```

- diff3 スタイルを有効にする
```bash
git config --global merge.conflictstyle diff3
```
