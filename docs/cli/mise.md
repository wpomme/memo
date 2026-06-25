# mise.md
# TODO: mise の設定に関することは docs/setting/mise.md に書く
## mise
- nodejsやpythonなど、ランタイムのバージョンを管理できるツール
    - 他にも使い出がありそう

### 例
```bash
# サブコマンドの一覧を表示
mise

# サブコマンドのヘルプを表示
mise help <subcommand>

# パッケージをインストールしてmise.toml. にパッケージを追加するコマンド
# mise で利用できるパッケージの一覧が見れる
mise use

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
