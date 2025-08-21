# rename
## 要約
$ ls | sed "p;s/<old-file-name>/<new-file-name>/" | xargs -n 2 mv

## 実験用
### 環境構築
```sh
mkdir test
cd test
touch test-file test-file2
```

## 実行
```sh
ls | sed "p;s/test/foo-test/" | xargs -n 2 mv
```
`ls`を実行すると`foo-test-file   foo-test-file2`となることがわかる

## 環境削除
```sh
cd ..
yes | rm test/foo-test-file test/foo-test-file2
rmdir test
```
