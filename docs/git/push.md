- 現在チェックアウトしているブランチをpushする
```bash
# 最もシンプルな方法
git push origin HEAD
# 上流ブランチ(upstream)が設定済みならgit push でOK
git push
# 最初に-uを付けて上流を設定しておけばいい
git push -u origin HEAD
```

## 上流ブランチ(Upstream Branch)
- ローカルブランチが追跡(トラッキング)しているリモートブランチのこと
```bash
## 上流ブランチの設定方法
# -u(--set-upstream)オプションを追加する
git push -u origin <branch-name>

## 現在のブランチが上流ブランチに設定されているかどうかを確認
git rev-parse --abbrev-ref @{upstream}
# -> 未設定の場合はエラーになる
```

