# gootle-cloud-cli-sample

GCPのCLIサンプル

## はじめに

ここではGoogle Cloud Shell上でCLIを用いてGoogle の環境を
自動的に整える方法を試行します。

前提条件として[Cloud SDK入門ガイド][1]にしたがって環境を整えてください。


## Google Cloud Shell

    mkdir google-cloud-cli-sample
    cd google-cloud-cli-sample
    git init
    git config user.name Git上のユーザ名
    git config user.email Git上のユーザのメールアドレス
    git remote origin add https://github.com/DaishinUehara/google-cloud-cli-sample.git
    git fetch
    git checkout develop
    git merge origin/develop


## サンプルスクリプト

|サンプルスクリプトファイル|スクリプト名|説明|
|:--|:--|:--|
|01_create_instance.sh|[GCEインスタンス生成][2]|インスタンスが存在しない場合1つインスタンスを生成する|
|02_list_instances.sh|[GCEインスタンス取得][3]|インスタンスを取得する|
|03_delete_all_instances.sh|[全GCEインスタンス削除][4]|インスタンスを取得する|

[1]:https://cloud.google.com/sdk/docs/how-to
[2]:https://cloud.google.com/sdk/gcloud/reference/compute/instances/create
[3]:https://cloud.google.com/sdk/gcloud/reference/compute/instances/list
[4]:https://cloud.google.com/sdk/gcloud/reference/compute/instances/delete
