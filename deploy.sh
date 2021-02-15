#!/bin/bash

# 安装依赖
npm install
# 打包 
npm run build
# 删除 ngnix 指向的文件夹下得文件
rm -rf /home/www/*

# 将打包好的文件复制过去
mv /vue-demo-by-cli/dist/*  /home/www
# 删除 clone 的代码
rm -rf /vue-demo-by-cli