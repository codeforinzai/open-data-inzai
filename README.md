# Inzai City Open Data

本リポジトリは千葉県印西市のオープンデータを、プログラム等から扱いやすい形に改変したデータを公開しています。

- [印西市のオープンデータ](https://www.city.inzai.lg.jp/0000004803.html)
- [印西市わが街ガイド - オープンデータ一覧](https://www2.wagmap.jp/inzai/OpenData)

ぜひ、アプリケーション開発等にご利用ください。

主な改変は下記の通りです。

- 文字コードの変更
  - ファイルにより異なる文字コードをUTF-8に統一
- 改行コードの変更
  - ファイルにより異なる改行コードをLFに統一
- 異なるデータ形式のファイルを追加
  - JSON形式のファイルを追加

## 活用例

[印西市施設マイマップ](https://www.google.com/maps/d/edit?mid=1mQcsV1waErYBqIN9fLenX_nmzBQFgyYZ&usp=sharing)（Googleマイマップにデータをマッピングしたものです）

![Inzai city my map](https://user-images.githubusercontent.com/2178775/121727255-a0afbe80-cb26-11eb-8757-3e4bc46b8530.png)

## ディレクトリ構成

### [/original](/original)

出典元から取得したファイルをそのまま配置しています。

文字コード、改行コード、区切り文字はファイルにより異なります。

### [/csv](/csv)

フォーマットを統一したCSVファイルを配置しています。

- 文字コード
  - UTF-8
- 改行コード
  - LF
- 区切り文字
  - カンマ

### [/json](/json)

JSON形式に変換したファイルを配置しています。

- 文字コード
  - UTF-8
- 改行コード
  - LF

```json
[
  {
    "施設名": "印西市役所",
    "設置場所": "1階　ロビー",
    "所在地": "印西市大森2364-2",
    "電話番号": "0476-42-5111",
    "緯度": 35.832349,
    "経度": 140.145817
  },
  ...
]
```

## データ一覧

[122319_open_data_list.csv](/original/122319_open_data_list.csv)を参照ください。

## お問い合わせ

ご不明点・ご質問等ございましたらIssueを作成してください。

## ライセンス

- [印西市のオープンデータ](https://www.city.inzai.lg.jp/0000004803.html)
  - [クリエイティブ・コモンズ 表示 4.0 国際 ライセンス](http://creativecommons.org/licenses/by/4.0/deed.ja)
- [印西市わが街ガイドのオープンデータ](https://www2.wagmap.jp/inzai/OpenData)
  - [クリエイティブ・コモンズ 表示 2.1 日本 ライセンス](https://creativecommons.org/licenses/by/2.1/jp/deed.ja)

本リポジトリは[クリエイティブ・コモンズ 表示 4.0 国際 ライセンス](http://creativecommons.org/licenses/by/4.0/deed.ja)の下に提供いたします。
