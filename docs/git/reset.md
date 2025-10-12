- reset とrevert の違い
    - reset -> コミットログが残らない
    - revert -> コミットログが残る

- featureブランチで直前のコミットを取り消す
```bash
git reset --soft HEAD^
```
