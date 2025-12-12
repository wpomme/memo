## mysql-client
### データベースの探索
```
# データベースの一覧を取得
show databases;

# 操作するデータベースを指定
use <database-name>;

# テーブルの一覧を取得
show tables;

# カラム名を取得
SHOW columns FROM <table-name>;

# テーブルのレコード件数を取得
SELECT count(*) FROM <table-name>;
```

### ソート
```
SELECT * FROM departments ORDER BY dept_no;
```
