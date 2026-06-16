# TODO
- memo CLI インターフェイス
```bash
# Ruby で CLI を作り直してしまう
memo
memo list - docs 以下の記事の一覧を表示
memo cat  - 該当のメモを全文表示
memo grep - docs 以下について、そのキーワードで全文検索をかける
# formatter
# 英数字の後は半角スペースを入れる、など
memo format - 対象のメモをフォーマットする

# 一時的なスクリプト
# タグ付けの種類
# CLI, bash, git, bulk, setting, TUI, editor, shell, AI, Application, Package Manager
# title: そのファイルの名前を使用する
memo add-front-matter Front Matter を追加する。front-matter にはtag, title, を持たせる

# 今後の構想
## SQLite に接続して、DB でメモを管理する
```
- memo format の一例
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

## memo に書くこと
- gh コマンドでGithub Actions を操作できる
    - ワークフローの再実行ができる
        - 再実行のために、ワークフローの実行リストを確認できる

- zsh-cli
    - zsh のauto-completion がとても便利
    - memo の cli を作成するときに利用できそう
