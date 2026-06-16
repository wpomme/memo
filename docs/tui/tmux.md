## 例
- 10 番目以降のwindow に移動する
    - 番号を指定して移動する
    `prefix + '`
    - インタラクティブな移動
    `prefix + w`

- セッション
    - セッションに名前を付けて起動する
        `tmux new -s <session-name>`
    - 指定したセッションを起動する
        `tmux attach -t <target-session>`
    - 次のセッションに移動する
        `prefix )`
    - 前のセッションに移動する
        `prefix (`

        * target-session は次の順番で決まる
        1. $ のついたsession ID
        2. セッションの正確な名前
        ...

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
        - `prefix + d`としてしまうと、セッションがDetachとなるので注意すること

    - ウィンドウを番号指定で閉じる
    `tmux kill-window -t <session-name>:<window-number>`
        - 例: 現在のセッションの５番目のウィンドウを閉じる
        `tmux kill-window -t 5`

    - ウィンドウの名前を変更する
    `prefix + ,`

- その他
    - tmux のコマンド一覧
    `tmux list-commands`

- tmux のドキュメント
    - tmux attach のドキュメントを探す
    1. `man tmux`
    2. `/attach-session`

    - tmux new のドキュメントを探す
    1. `tmux list-commnads | grep new`
