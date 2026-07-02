- Special parameters
Special Parameter は$ を付けて展開する(Parameter Expansion)
    - #: スクリプトや関数に渡された引数の数
    - Ref: Expands to the number of positional parameters in decimal

    - ?: 直前に実行したコマンドの実行結果。0 ならTrue である。
    - Ref: Expands to the status of the most recently executed foreground pipeline.

    - !: 直前に実行したコマンドのプロセスID 
    - Ref: Expands to the process ID of the most recently executed background (asynchronous) command.
