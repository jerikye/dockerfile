From paddlecloud/paddlespeech:develop-gpu-cuda11.2-cudnn8-fb4d25	
LABEL maintainer Jerik "carter7777@qq.com"

RUN pip --no-cache-dir install \
	jupyterlab \
  jupyter_contrib_nbextensions

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"	  		
		
		
RUN mkdir nohup
RUN jupyter notebook --generate-config			
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main