- gh github CLI
```bash
# 現在のブランチのPR のステータスを確認する場合
## マージ済みかどうかなどが分かる
gh pr status

# より詳細な情報 (タイトル、本文、レビュー状態など)
gh pr view

# CI チェックの結果一覧
# URL からCI のRun ID が分かる
gh pr checks

# CI を再実行する
gh run rerun <run-id>
## 詳細に指定する場合
gh run rerun <run-id>  --repo <repo-name> --failed
```
