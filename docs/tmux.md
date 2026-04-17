## 例
- 10 番目以降のwindow に移動する
    - 番号を指定して移動する
    `prefix + '`
    - インタラクティブな移動
    `prefix + w`


- ウィンドウ
    - 全てのウィンドウの一覧を表示
    `tmux list-windows`

    - 現在開いているウィンドウを完全に終了する
    `Ctrl + d`

    - ウィンドウを番号指定で閉じる
    `tmux kill-window -t <session-name>:<window-number>`
        - 例: 現在のセッションの５番目のウィンドウを閉じる
        `tmux kill-window -t 5`
