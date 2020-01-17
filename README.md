[ja](./README.ja.md)

# IsInt

Check if the value is an integer in Bash.

# DEMO

![]()

# Features

* Is a function: `IsInt`
* Simple: `IsInt 0 && echo 'IsInt' || echo 'NotInt'`

# Requirement

* <time datetime="2020-01-17T12:23:59+0900">2020-01-17</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.75-v7l+ #1270 SMP Tue Sep 24 18:51:41 BST 2019 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/
```

# Usage

## run unit tests

```sh
cd /src
./test_IsInt.sh
```

## Call a function

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

# Note

* Outside the range of minimum value to maximum value, even if it is an integer value, it will be false: `-9223372036854775808` ...` 9223372036854775807`
* Float is false: `0.1`

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

