# memoコマンドのテストパターン
## 引数ゼロ、または引数が三つ以上
- help を表示
## 引数が一つ
- `memo help`の場合
- `memo list`の場合
    - 後々、要調査
- `memo <thema>`の場合
    - docsの直下にメモがある
        - 例: `memo vim`
    - docsの直下にディレクトリがある
        - 例: `memo git`
            - この場合、テーマの下にあるメモのリストを表示する
    - docsの直下にメモもディレクトリも存在しない
        - 例: `memo foo`
## 引数が二つ
- 第一引数がディレクトリ
    - 第二引数が第一引数のディレクトリの中に存在する
        - メモを表示
        - 例: `memo git diff`
    - 第一引数がファイル
        - エラーメッセージなど
        - 例: `memo vim diff`
    - 第二引数が第一引数のディレクトリの中に存在しない
        - エラーメッセージなど
        - 例: `memo vim foo`

## テストパターン一覧
- パターン１ (異常系と正常系を一通り)
```bash
memo
memo foo bar baz
memo help
memo list
memo vim
memo git
memo foo
memo git diff
memo vim diff
memo vim foo
```

- パターン２ (正常系が中心)
```bash
memo ghostty
memo special-characters
memo bash
memo bash history
memo bulk sed
memo git conflict
```
