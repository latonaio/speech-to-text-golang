# speech-to-text-golang
speech-to-text-golangは、Google Cloud Speech-to-Text APIをGolangランタイムで動かすための手順概要です。

## 動作環境
- Ubuntu (18.04 LTS)
- Go 1.18.3

## 動作手順
### サービスアカウントのJSONキーの作成
[Google Cloud Speech-to-Text](https://cloud.google.com/speech-to-text/docs/before-you-begin?hl=ja)を参考にサービスアカウントのJSONキーを作成し、カレントディレクトリにおいてください。
ここでは、ダミーとして`your-project-credentials.json`が置いてあります。

### 環境変数の書き換え
`launch.sh`の環境変数を書き換えます。

- GOOGLE_APPLICATION_CREDENTIALS：サービスアカウントキーのパス（カレントディレクトリに置く場合`$PWD/your-project-credentials.json`）

### Speech-to-Textの開始
以下のコマンドで、Speech-to-Textのマイクロサービスが開始します。  
入力された音声を変換したテキストはコンソールに表示されます。  
「Ctrl+C」で停止してください。
```
./launch.sh
```

