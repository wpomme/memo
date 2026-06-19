# memo
## CLI (WIP)
### ビルド
```bash
# ローカルでgem をビルドする
bundle exec rake install:local

# どのフォルダからでもmemo を実行できる
memo list
```

### 開発コマンド
```
bundle exec ruby exe/memo list
bundle exec ruby exe/memo dirs
bundle exec ruby exe/memo read <word>

# テスト
bundle exec ruby -Itest test/memo/test_docs.rb
```
