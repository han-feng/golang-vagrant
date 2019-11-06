#!/usr/bin/env bash

### apk 相关设置 ###
# 设置阿里镜像源
sed -i 's/dl-4.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 设置清华镜像源
# sed -i 's/dl-4.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
# 设置中国科技大学镜像源
# sed -i 's/dl-4.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

apk update

# ### Go语言开发环境 ###
apk add --no-cache musl-dev make git go dep

cat>>/etc/profile<<EOF

# golang
export GOPROXY=https://goproxy.cn
export GOPATH=/home/vagrant/go
export PATH=\$GOPATH/bin:\$PATH

EOF

sudo -u vagrant go get -u github.com/gpmgo/gopm
