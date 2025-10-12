- gitのアカウント情報などの確認
```bash
git config -l
```

- ローカルのgitアカウント作成
```bash
git config --local user.name "<username>"
git config --local user.email "<email>"
```

- テキストエディタをVimにする
```bash
git config --global core.editor 'vim -c "set fenc=utf-8"'
```
