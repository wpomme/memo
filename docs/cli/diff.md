- diff

- origfile と patchfile の内容が次の場合、diff の結果は次の通り
```bash
cat origfile
> 1
> 12
> 123

cat patchfile
> 123
> 123
> 123

diff origfile patchfile
```

```diff
1,2d0
< 1
< 12
3a2,3
> 123
> 123
```

- a unified diff 形式(-u オプション)
```
# -u を付けると、 a unified diff の形式で差分を出力する
# 先頭の三行に、パッチファイルとパッチを当てるファイルの情報と、差分の概要を出力する
# patch コマンドは、この情報をみて、パッチファイルとパッチを当てるファイルを識別する
# なお、-c オプションでも同様の情報を出力する。-c の場合は、context diffs の形式でこの情報を出力する

# a unified diff について
# --- が付いている方がパッチを当てる方のファイル("old")
# +++ が付いている方がパッチファイル("new")

diff -u origfile patchfile
```

```diff
--- origfile	2026-05-22 08:53:21
+++ patchfile	2026-05-22 08:53:27
@@ -1,3 +1,3 @@
-1
-12
 123
+123
+123
```

#TODO origfile にパッチファイルを適用する
# diff からパイプでpatchに繋げるとreversed patchと判定されるときがある
```bash
diff -u origfile patchfile | patch -u
```
