- jq: CLI JSON Processor
```bash
# 整形 -> ファイルへ出力
cat <json-file> | jq > <file-name>.json

# キーでフィルター
cat <json-file> | jq '.["<key>"]'

# 配列から該当のキーの値を取得する
cat <json-file> | jq '.[]["<key>"]'

## key, value, length
### keys
# 配列から該当のキーの値を取得する
cat <json-file> | jq 'keys'

# -c を付けると、keyの配列が一行で表示される
cat <json-file> | jq -c 'keys'

### has
# そのkeyがあればtrue, なければfalseを返す
cat <json-file> | jq 'has("<key?>")'

### value
# .[] を指定すると、valueの一覧が取得できる
cat <json-file> | jq '.[]'

## その他、型チェックなど
## それぞれの値について、型のチェックができる
```
