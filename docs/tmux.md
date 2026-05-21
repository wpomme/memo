## 例
- 10 番目以降のwindow に移動する
    - 番号を指定して移動する
    `prefix + '`
    - インタラクティブな移動
    `prefix + w`

- セッション
    - セッションを一時終了する(Detach)
        - `prefix + d`
    - 直前のセッションに戻る(Attach)
        - `tmux a` or `tmux attach`
        1 例: 間違ってDetachしたときは`tmux attach`で復元する
        2 例: 複数のセッションを起動させるとき、最初のセッションをDetachして、ターミナルで新しいtmuxを起動させる
            - その際は、tmuxに名前を付けると良さそう
            - ほとんど不具合を起こさない開発サーバーにtmux1を割り当てて、それ以外をtmux2にするとか?


- ウィンドウ
    - 全てのウィンドウの一覧を表示
    `tmux list-windows`

    - 現在開いているウィンドウを完全に終了する
    `Ctrl + d`

    - ウィンドウを番号指定で閉じる
    `tmux kill-window -t <session-name>:<window-number>`
        - 例: 現在のセッションの５番目のウィンドウを閉じる
        `tmux kill-window -t 5`

    - ウィンドウの名前を変更する
    `prefix + ,`
