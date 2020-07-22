FROM registry.cn-shenzhen.aliyuncs.com/jerik/tts:test
# 非root用户
RUN groupadd --gid 5000 cyagen \
    && useradd --home-dir /home/cyagen --create-home --uid 5000 \
        --gid 5000 --shell /bin/sh --skel /dev/null cyagen
USER cyagen
RUN jupyter notebook --generate-config	  