# Inzai City Open Data

このリポジトリは千葉県印西市のオープンデータを改変して利用しています。

[印西市のオープンデータ](https://www.city.inzai.lg.jp/0000004803.html)は [クリエイティブ・コモンズ 表示 4.0 国際 ライセンスの下に提供されています。](http://creativecommons.org/licenses/by/4.0/deed.ja)

主な改変は下記の通り
- 文字コードの変更
- 改行コードの変更
- データ形式の変換（CSV->JSON）

## originalディレクトリ

オリジナルのCSVを配置しています。
文字コード：SJIS
改行コード：CRLF

## csvディレクトリ

文字コードと改行コードを変換したCSVを配置しています。
文字コード：UTF-8
改行コード：LF

## jsonディレクトリ

WIP