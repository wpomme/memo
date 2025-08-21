# data-exchanger
## 概要
- パソコン間でファイルの送受信をしたいときなど

### 送り手側
1. 送信側IPアドレスを調べておく
``` sh
ifconfig | grep "inet " | grep -v 127.0.0.1
```

2. ncで送信する
``` sh
nc -p 8888 < file.txt
```

### 受け手側
1. ncで受信する
``` sh
nc [IP Address] 8888 < received.txt
```
