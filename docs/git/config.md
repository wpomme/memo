- gitのアカウント情報などの確認
```bash
git config -l
```

- ローカルのgitアカウント作成
```bash
git config --local user.name "<username>"
git config --local user.email "<email>"
```

```bash
# テキストエディタをneovimにする
git config --global core.editor 'nvim'

# テキストエディタをVimにする
git config --global core.editor 'vim -c "set fenc=utf-8"'
```
