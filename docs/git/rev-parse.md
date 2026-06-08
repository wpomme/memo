- rev-parse
    - "Pick out and massage parameters"というporcelain command

- `git rev-parse --show-toplevel`
    - 対象のgit リポジトリの第一階層のディレクトリを取得できるコマンド
    - このコマンドをスクリプトで使用する際の注意点
    1. git リポジトリ外で実行するとエラーになる
    2. worktree内での実行、シンボリックリンク経由による実行、サブモジュール内での実行

    - 改善版
```bash
# Add Error Handling
REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null) || {
  echo "Error: not inside a git repository" >&2
  exit 1
}

TARGET_PATH="$REPO_ROOT/path/to/target"
```

- なお、git に依存したくない場合はこちら
```bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/path/to/target" && pwd)"
```
