Mac OS のデフォルトシェル

## history コマンドのドキュメント
```sh
$ man zshbuitins
```

/history で検索すると、"Same as fc -l" と記載がある
-> zsh ではhistory コマンドの代わりにfc -l コマンドを使う

## 履歴展開 (History Expansion)
- 最近のstringで始まるコマンドを履歴展開で補完して、実行したい場合
    - `!"string"` まで入力して、`Tab` キーを押すと、該当のコマンドが展開される。該当のコマンドが正しいことを確認して実行ができる。
```sh
$ !string
```
