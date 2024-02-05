# br-cluster

お家クラスタの構築に関する資材を集約したリポジトリ  
基本ここを辿ればどういう構成になってるのかがわかるようになってるはず。。(たぶん)

## ディレクトリ構成
```
.
├── build/                      #ここにRasberryPIに焼く用のイメージが生成される
├── cloud-init/                 #cloud-initのファイル管理を行うディレクトリ
|                               # https://github.com/kukv/br-cluster-cloud-init
├── docs/                       #ドキュメント類を管理するディレクトリ
├── packer/                     #イメージ生成のための定義を管理するディレクトリ
├── cluster-list                #クラスター用サーバー一覧
├── gateway-list                #ゲートウェイ用サーバー一覧
├── image-build.sh              #実行シェル
└── image-build.yml             #RasberryPIに焼く用のイメージを生成するdocker-compose
```

## システム構成図

![システム構成図](docs/diagrams/system-configuration.svg)

## イメージの生成方法

```
./image-build.sh
```
