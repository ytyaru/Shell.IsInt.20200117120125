[en](./README.md)

# IsInt

　Bashにて値が整数かどうかを確認する。

# デモ

![]()

# 特徴

* 関数である: `IsInt`
* シンプルである: `IsInt 0 && echo 'IsInt' || echo 'NotInt'`

# 開発環境

* <time datetime="2020-01-17T12:23:59+0900">2020-01-17</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.75-v7l+ #1270 SMP Tue Sep 24 18:51:41 BST 2019 armv7l GNU/Linux
```

# インストール

```sh
git clone https://github.com/ytyaru/
```

# 使い方

## 単体テストを実行する

```sh
cd /src
./test_IsInt.sh
```

## 関数呼出

```sh
touch a.sh
chmod 755 a.sh
vim a.sh
```

a.sh
```sh
. IsInt.sh
IsInt 0 && echo 'IsInt' || echo 'NotInt' # IsInt
IsInt A && echo 'IsInt' || echo 'NotInt' # NotInt
```

```sh
./a.sh
```
```sh
IsInt
NotInt
```

# 注意

* 最小値〜最大値の範囲外はたとえ整数値であっても偽になってしまう: `-9223372036854775808`...`9223372036854775807`
* 浮動小数は偽になってしまう: `0.1`

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

