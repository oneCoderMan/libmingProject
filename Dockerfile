
FROM hust-fuzz-base/base-builder
MAINTAINER your@email.com
#可以在此处添加开发者特定需要的库

#RUN git clone --depth 1 <git_url> upx     # or use other version control
#RUN git clone --depth=1 https://gitee.com/truelq/upx.git
#RUN git clone https://github.com/ImageMagick/ImageMagick.git
RUN apt-get install -y automake libtool autoconf bison flex libfreetype6 libfreetype6-dev

RUN git clone https://gitee.com/onecoderMan/libming.git

#COPY upx $SRC/upx/
WORKDIR libming
RUN git checkout b72cc2f

COPY build.sh $SRC/
COPY BBtargets.txt $SRC/
