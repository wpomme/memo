# 知っていること
# TODO: CLI の操作以外のことは別のところに書く
## 起動しているdocker containerにログイン
```
docker exec -it <NAMES or CONTAINER ID> <Shell to login>
```
# 使用したことのあるコマンド
## cp
```
# ホストからコンテナへファイルをコピー
# 例: ホストのデータをdevコンテナの/homeへコピー
docker cp ./share_data/world-db dev:/home
```

