# mise.md
## mise
- nodejsやpythonなど、ランタイムのバージョンを管理できるツール
    - 他にも使い出がありそう

### How to use
- サブコマンドのヘルプを表示
```bash
mise help <subcommand>
```

- 利用できるランタイムを表示
```bash
# 利用できるRubyのランタイムを全て表示
mise ls-remote ruby

# 利用できるRubyのランタイムのうち、バージョンが4系のものを表示する
mise ls-remote ruby@4
```

- miseのconfigファイルを管理する
```bash
# miseのコンフィグファイルの一覧を見る
mise config
```

- 管理しているランタイムの詳細情報を確認
```
mise ls
```

- nodejsの最新のLTSをインストールする
```
mise use -g node@lts
```
