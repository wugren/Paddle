FROM PADDLE_BASE_IMAGE
MAINTAINER PaddlePaddle Dev Team <paddle-dev@baidu.com>
COPY build.sh /root/
ENV WITH_GPU=PADDLE_WITH_GPU
ENV IS_DEVEL=PADDLE_IS_DEVEL
ENV WITH_DEMO=PADDLE_WITH_DEMO
ENV PIP_INSTALL_ARGS ""
ENV PIP_GENERAL_ARGS ""
ENV USE_UBUNTU_MIRROR OFF
ENV WITH_AVX=PADDLE_WITH_AVX
RUN cd /root/ && bash build.sh
