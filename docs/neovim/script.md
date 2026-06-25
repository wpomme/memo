## Neovim のスクリプト作成
```
# 組み込み関数のリスト
:help function-list
# 組み込み関数の詳細
:help vimscript-functions

# 定義へ移動、元のページに戻る
## Ctrl+] でそのキーワードの詳細へ移動する
## Ctrl+T, Ctrl+O で元の場所に戻る
```

## スクリプトを実行
```
# コマンドラインモードで%lua と打つと、そのバッファがluaで実行される
# line() などの組み込みコマンドはvim.fn.line() などとする必要がある
:%lua

# または-l オプションを付けて実行する
nvim -l script.lua

# スクリプトの作成・デバッグ
# -u で設定ファイルを指定して読み込む
nvim -u script.lua <file_name>

# 例
## keymap.lua を読み込んで files.js を編集する
nvim -u keymap.lua files.js
```

- 注意: デフォルトの設定ファイルは読み込まれなくなってしまう
- swapfile に関する警告が出るので、swapfile = false を追加しておくといい
```lua
vim.opt.swapfile = false
```

