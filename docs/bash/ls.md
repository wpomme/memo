- ヘッダー行の表示はできない
options

- `-l`: 詳細表示
   以下のデータを表示する
   file mode, number of links, owner name, group name,
   number of bytes in the file, abbreviated month, day-of-month file was last modified, hour file last modified, minute file last modified,
   and the pathname. 

- `-t`: ファイル更新順に表示する
    - オプションにrを追加すると順番が逆になる

- `-S`: ファイルの容量順に表示する
    - オプションにrを追加すると順番が逆になる

- `-h`: ファイルの容量に単位をつける

- `-s`: ファイルの容量をブロック単位で表示する

## よく使うコマンド
- ファイルの更新順に表示するとき
    - `-t`は最終更新日時(mtime)で、新しい順に表示する
    `ls -lt`

- ファイルの容量順に表示するとき
    `ls -ls`
    - 人間が読みやすいようにするなら`ls -lhs`
