# TODO
- memo CLI インターフェイス
```bash
memo
memo list - docs 以下の記事の一覧を表示
memo cat  - 該当のメモを全文表示
memo grep - docs 以下について、そのキーワードで全文検索をかける
```
- CLI をRubyで作り直してしまう
    - まず、docs 以下の記事をタグで検索できる機能を作成する
    - とりあえず、メモにFront Matter を作成して、それにタグを入れて、そのタグを拾って、
    - sqliteを使ってDBにメモを入れてしまう
    - MarkdownにFront Matterを入れてタグ付け
- Markdown ファイルなどの書式を整形するフォーマッター
    - 英数字の後は半角スペースを入れる、など
        - パッケージで代用できそう
- docs の Markdown ファイルの書式を作成するためのテンプレートがほしい
    - 書式がバラバラなので
    - 書式例: コマンドの例はgit/diff.md みたいな感じにしたい
        ```
        # format 前
        - 基本的なログ表示
        ```bash
        git log --oneline
        ```

        # format 後
        ```bash
        # 基本的なログ表示
        git log --oneline
        ```

        ```


- dotfiles, memo 他の端末でgit pushできるようにする
- タグ付けの種類
    - CLI, bash, git, bulk, setting, TUI, editor, shell, AI, Application, Package Manager
- フォルダ構成再構築
```
docs
- cli
    - /old
        # 廃止・古いコマンド
        - groups
    - コマンド操作に関するdocsならcliにいれる
    - grep.md
    ...
- shell
    - bash.md
    - zsh.md
- tui
    - tmux.md
    - tig.md
```

## memo に書くこと
- gh コマンドでGithub Actions を操作できる
    - ワークフローの再実行ができる
        - 再実行のために、ワークフローの実行リストを確認できる

- markdown の書式
    - special-characters.md を統合する

- zsh-cli
    - zsh のauto-completion がとても便利
    - memo の cli を作成するときに利用できそう
