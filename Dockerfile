FROM  nodejs:10
LABEL maintainer="hey cmm<i@orcl.cc>"

WORKDIR /root/res

RUN cd /root/res

RUN git clone https://github.com/proxygit/res.git && cd res/

RUN npm install

RUN npm run dev

