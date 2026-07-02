- bundle
    - プロジェクトごとに使うRubyのパッケージマネージャー

- How to use
```bash
# Gemfileを作成する
bundle init

# パッケージのminitestを追加する
bundle add minitest

# そのプロジェクトの全てのgemを確認する
bundle show
```

- rake と bundle exec rake
    - `rake` -> システムにインストールされた`rake`を使う
    - `bundle exec rake` -> Gemfile.lock で固定されたバージョンの方の`rake`を使う

- bundle gem
```bash
# rubygem を作るための雛形を作成するコマンド
# <name> -> . とすればカレントディレクトリが指定される
# Gemfile や README が既にあると、上書きしていいかどうか聞かれる
bundle gem <name>
```
