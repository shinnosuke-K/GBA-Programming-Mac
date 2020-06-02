# 環境構築（Linux用）

この資料は情報システム演習実験Ⅰのテーマ3（組込みシステムプログラミング）を行うための事前準備です。

コマンドはCentOSとUbuntuのそれぞれを記載しています。

インストールしているコマンドであれば、無視してください。

それ以外のディストリビューションをお使いの方は、各自で設定をしてください。

もしわからなければ、質問をしてください。

### 目次

- [CentOS](##CentOS)
- [Ubuntu](##Ubuntu)
- [CentOSとUbuntuで共通](##CentOSとUbuntuで共通)

***

## CentOS

``` bash
1. yum install bzip2 wget
2. cd ~
3. wget https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/7-2017q4/gcc-arm-none-eabi-7-2017-q4-major-linux.tar.bz2
4. tar -jxf gcc-arm-none-eabi-7-2017-q4-major-linux.tar.bz2
5. exportline="export PATH=$HOME/gcc-arm-none-eabi-7-2017-q4-major/bin:\$PATH"
6. echo $exportline >> ~/.bash_profile
7. source ~/.bash_profile
```

***

## Ubuntu

以下のコマンドを実行

``` bash
apt-get install build-essential gcc-arm-none-eabi
```

***

</br>
</br>
</br>
</br>

## CentOSとUbuntuで共通

インストール後、以下のコマンドを実行

```bash
arm-none-eabi-gcc --version
```

実行後、以下のようなメッセージが表示されていると正しくインストールされています。

``` text
arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]
Copyright (C) 2017 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

CentOSのみ
ダウンロードした圧縮ファイルを消したいなら以下のコマンドを実行

``` bash
rm ~/gcc-arm-none-eabi-7-2017-q4-major-linux.tar.bz2
```

***

## まとめ

もし、実験が終わってインストールしたものを削除したかったら、勉強がてら調べて見てください。

わからない人が多ければ、ドキュメントを書こうと思います。
