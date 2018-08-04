# gootle-cloud-cli-sample

GCPのCLIサンプル

## はじめに

ここではGoogle Cloud Shellを用いて0からGoogle の環境を整える方法をメインに述べます。

## Google Cloud Shell

    mkdir gootle-cloud-cli-sample
    cd gootle-cloud-cli-sample
    git init
    git config user.name Git上のユーザ名
    git config user.email Git上のユーザのメールアドレス
    git remote origin add https://github.com/DaishinUehara/gootle-cloud-cli-sample.git
    git fetch
    git checkout develop
    git merge origin/develop
