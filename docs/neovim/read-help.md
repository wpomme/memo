## ドキュメント・help の読み方
### nvim のドキュメント
```bash
man nvim
```
- neovim のWeb ドキュメント: https://neovim.io/doc/user/

### help の読み方 (vim と共通)
- help を全画面で見る
```
:h | only
# それか<Ctrl-W> H を押して、高さを最大にする
# なお、<Ctrl-W> K を押して、幅を最大にすると、高さが半分になってしまう

# ユーザーマニュアルの目次を開く
:h user-manual

# 指定した項目を開く
:h usr_06.txt

# キーの表記法(Key Notation) を確認する
:h key-notation

# vim.keymap.set へ移動するには
<- :h -> lua の項目だった
1. :h | only
2. -> vim-script の項目へ移動する
    - vim が付くものはvim-script の領域みたい
3. keymap で検索して、ジャンプしていけば、vim.keymap.set のドキュメントに辿り着く

# 定義へ移動、元のページに戻る
## Ctrl+] でそのキーワードの詳細へ移動する
## Ctrl+T, Ctrl+O で元の場所に戻る
```

### helpgrep
```
## neovim のhelp の中を検索する
:helpgrep <word>

## 次の検索結果に移動するには
:cn, :cne, :cnext
-> ]q でも移動できる
```


