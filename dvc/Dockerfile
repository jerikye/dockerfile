FROM wywdoc/py27tf17
LABEL maintainer Jerik "carter7777@qq.com"

# pip 升级
RUN python3 -m pip install --upgrade pip

# 安装基础库
RUN pip install -U setuptools

RUN pip3 --no-cache-dir install \
	tensorflow-gpu >= 1.8 \
	numpy >= 1.11.1 \
	librosa == 0.5.1 \
	joblib == 0.11.0 \
	tensorpack == 0.8.6 \
	pyyaml \
	soundfile \
	pydub \
	tqdm


RUN pip --no-cache-dir install \
		jupyterlab \
        jupyter_contrib_nbextensions
		
		
# 安装服务常用包
RUN pip --no-cache-dir install \
        flask \
        flask-restful \
        flask_jsonrpc \
        fire \
        requests_toolbelt
		
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

# 删除 apt lists
# RUN rm -rf /var/lib/apt/lists/*

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"	  		
		
		
RUN mkdir nohup
RUN jupyter notebook --generate-config			
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

 
