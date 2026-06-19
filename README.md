# memo
## セットアップ
```bash
make
```

## クリーン
```bash
make clean
```

## コマンド一覧
```bash
# メモの一覧
memo-list

# 全てのメモに対してgrepを実行する
memo-grep

# 指定したメモの全文を表示する
memo-cat
```

## CLI(WIP)
```
bundle exec ruby exe/memo list
bundle exec ruby exe/memo read <word>

# テスト
bundle exec ruby -Itest test/memo/test_docs.rb
```
