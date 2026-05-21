- 自分でインストールしたパッケージを確認するとき
```bash
brew leaves -r
```
- -r, --installed-on-request: 自分で入れたパッケージ
- -p, --installed-as-dependency: 他と依存関係がないパッケージ

- パッケージの情報を確認するとき
    - インストールしたパッケージについて、warningが出た場合の対処法などが書いてあったりする
```bash
brew info <package>
```
