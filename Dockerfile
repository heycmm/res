FROM  node:10
LABEL maintainer="hey cmm<i@orcl.cc>"

WORKDIR /root/res

RUN cd /root/res

RUN npm install

RUN npm run dev

