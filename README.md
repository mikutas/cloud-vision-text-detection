# README

* 画像アップロードフォームを設置したページ
* 画像から読み取った文字列を表示するページ

があるだけ。

画像から文字を読み取るのはGoogle Cloud Vision APIにやってもらう。Ruby用のクライアントライブラリがあるのでGemfileに書けばよい。

```gemfile
gem 'google-cloud-vision'
```

また、GCPでプロジェクトを用意し、Cloud Vision API用のサービスアカウントとサービスアカウントキーを作成する。
