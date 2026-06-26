# memo
- TODO
```
## TODO
memo help / -h コマンド
memo grep   # docs 以下について、そのキーワードで全文検索をかける

## 構造の変更
## memo と memo-docs の分離
## memo init でホームディレクトリ以下のmemo or memo-docs という名前のフォルダを探して、そこをパスにする

# 今後
memo format # 対象のメモをフォーマットする。半角英数字の後には半角スペースを入れるなど。rubocopで代用可能？

## SQLite に接続して、DB でメモを管理する

## Front Matter の追加
# tag: CLI, bash, git, bulk, setting, TUI, editor, shell, AI, Application, Package Manager
# title: そのファイルの名前を使用する
```

## CLI
### ビルド
```bash
# memo のリポジトリをクローンして、ruby の動作環境を整えたら
bundle install

# ローカルでgem をビルドする
bundle exec rake install:local

# どのフォルダからでもmemo を実行できる
memo list
```

### 使い方
```bash
# メモの一覧を表示する
memo list

# 指定したディレクトリの中にあるメモの一覧を表示する
memo list <dir>

# 該当のメモを全文表示する
memo read <word>

# メモのフォルダ一覧を表示する
memo dirs
```

### 開発コマンド
```bash
# Use bundler
bundle exec ruby exe/memo list
bundle exec ruby exe/memo dirs
bundle exec ruby exe/memo read <word>

# Use rake
rake "memo[list]"
rake "memo[read, grep]"

# テスト
rake
# test を引数にとってもいい
rake test
```
