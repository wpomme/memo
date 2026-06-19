# memo
## CLI (WIP)
### ビルド
```bash
# ローカルでgem をビルドする
bundle exec rake install:local

# どのフォルダからでもmemo を実行できる
memo list
```

### 使い方
```bash
# メモの一覧を表示する
memo list

# 該当のメモを全文表示する
memo read <word>

# メモのフォルダ一覧を表示する
memo dirs
```

### 開発コマンド
```
bundle exec ruby exe/memo list
bundle exec ruby exe/memo dirs
bundle exec ruby exe/memo read <word>

# テスト(WIP)
bundle exec ruby -Itest test/memo/test_docs.rb
```

### TODO
```
## TODO
memo help / -h コマンド
memo grep # docs 以下について、そのキーワードで全文検索をかける
memo format # 対象のメモをフォーマットする。半角英数字の後には半角スペースを入れるなど。rubocopで代用可能？

### Front Matter の追加
# tag: CLI, bash, git, bulk, setting, TUI, editor, shell, AI, Application, Package Manager
# title: そのファイルの名前を使用する

# 今後
## SQLite に接続して、DB でメモを管理する
```
