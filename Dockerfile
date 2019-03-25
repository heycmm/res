# 设置基础镜像
FROM ubuntu:14.10
# 如果上个步骤已经更新软件源，这步可以忽略
RUN apt-get update
# 安装 NodeJS 和 npm
RUN apt-get install -y nodejs npm
# 将目录中的文件添加至镜像的 /srv/hello 目录中
ADD . /root/res
# 设置工作目录
WORKDIR /root/res
# 安装 Node 依赖库
RUN npm install
# 暴露 3001 端口，便于访问
EXPOSE 3001
# 设置启动时默认运行命令
CMD ["npm”, “run dev"]
