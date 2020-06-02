# GBA-Programming-Mac

## 環境構築（mac用）

このレポジトリはゲームボーイアドバンスのエミュレータをmacで動かすたのものです。

すでにやっている箇所がある人もいると思うので各自の判断で置き換えて準備しても構いません。

わからない人は上から順番にやればできると思います。

この説明は Mac 用に書かれています。

CentOSとUbuntuについては document に簡単な資料がありますのでご参考までに

***

- [GBA-Programming-Mac](#gba-programming-mac)
  - [環境構築（mac用）](#環境構築mac用)
    - [**準備**](#準備)
    - [**ターミナルの開き方**](#ターミナルの開き方)
    - [**インストール**](#インストール)
    - [**VBA**](#vba)
    - [**コマンド**](#コマンド)
    - [**まとめ**](#まとめ)

### **準備**

これ以降の作業で必要なファルダを準備します。

このPDFが入っているファルダをデスクトップに配置してください

### **ターミナルの開き方**

開き方は、Application → ユーティリティ → ターミナルにあります。

他には、Spotlight検索を起動し、terminal.app と入力することでも起動できます。

> 演習実験はターミナルを使って行うので、Dockに登録しておいてください。

<img src="img/スクリーンショット%202020-05-15%2019.15.21.png" width=70%>

### **インストール**

それでは、コンパイラなど必要なツールをインストールしていきましょう。

まずは、ターミナルを開いてください。

その後、ターミナルに以下のコマンドをコピペして実行してください。

``` bash
cd $HOME/Desktop/C-Programming-4-Mac && bash script/init.sh
```

</br>
以下の画像のようなポップアップが出た人はインストールを押してください。

（インストールに時間がかかるかもしれません）

<img src="img/homebrew_install_02.png" width=60%>

インストールが完了したら、以下のコマンドをコピペして実行

``` bash
arm-none-eabi-gcc --version
```

すると

``` text
arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]
Copyright (C) 2017 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

みたいな内容が表示されていたら正しくインストールされています。

</br>

### **VBA**

ここまで来たら、VBAの使い方を紹介します。

VBAはVisualBoyAdvanceというGBA（ゲームボーイアドバンス）をPC上で動かすことができるエミュレータです。

まずは、フォルダ内にある visualboyadvance-m.app (VBA) を開いてください。

開くとこんな画面が出てくると思います。

<img src="img/スクリーンショット%202020-05-16%2013.02.49.png" width=40%>

開いたら、メニューバーの File → Open を選択

作業しているフォルダ内の sample.mb を選択してください。

すると、画面の左上に白いドットが表示されると思います。

基本的には **C言語のファイルを作成 → mbファイルを作成 → VBAで動作確認** の流れで作業します。

mbファイルの作成方法は次の項目を見ればわかると思います

</br>


### **コマンド**

C言語のファイルを作成していくと思います。

なので、そこからmbファイルを作る流れを紹介します。

フォルダにはsample.cというファイルがあると思います。

このファイルからmbファイルを作るためには以下のコマンドを実行します。

``` bash
make NAME=sample
```

NAMEにはファイル名を指定します。

実行するとmbファイルが作成されていると思います。

mbファイル以外にも拡張子に .s、.o 、.out が付いたファイルが作成されています。

これらのファイルは基本必要ないので削除してしまいましょう。

``` bash
make clean NAME=sample
```

NAMEには上と同じくファイル名を指定します。

実行すると、ファイルが消えていると思います。

これで、不必要なファイルでフォルダが溢れかえってしまうことはありません。

makeコマンドは便利なので、興味を持った人は各自で調べてみてください。

> 拡張子が .s のものが アセンブリ言語のファイルになります。

### **まとめ**

以上が、事前準備の流れになります。

これで開発はすることができると思います。

質問があれば、気軽にご連絡ください。