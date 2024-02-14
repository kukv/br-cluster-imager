# br-cluster-imager

Raspberry pi OSのイメージ情報を管理するリポジトリ

## ディレクトリ構成

```txt
.
├── build/                      # Packerで生成されるrasberry pi OSのイメージが格納されるディレクトリ
├── cloud-init/                 # cloud-initのファイル管理を行うディレクトリ
│                               #   https://github.com/kukv/br-cluster-cloud-init
├── packer/                     # イメージ生成のための定義を管理するディレクトリ
├── cluster-list                # クラスタ一覧
├── gateway-list                # ゲートウェイ一覧
├── image-build.sh              # 自動生成実行シェル
├── image-build.yml             # rasberry pi OSのイメージを生成するためのdocker compose
└── packer-init.yml             # Packerのプラグインをセットアップするためのdocker compose
```

### build

ここにpackerで生成されたOSイメージが格納される

### cloud-init

cloud-initのファイル管理を行うディレクトリ

### packer

OSイメージを生成する為の定義が格納されている

## イメージの生成方法

cloud-initファイル生成のシェルも内部で叩くようになっているので、基本的にはこのシェルだけを叩けば良い

```sh
./image-build.sh
```
