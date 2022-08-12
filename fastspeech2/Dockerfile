From nvcr.io/nvidia/pytorch:21.07-py3
LABEL maintainer Jerik "carter7777@qq.com"



RUN conda config --add channels conda-forge  
RUN conda install montreal-forced-aligner  
RUN conda update -c conda-forge kaldi 

RUN pip --no-cache-dir install \
		pyworld==0.2.10 \
		tgt==1.4.4

RUN python3 -m pip install paddlepaddle-gpu==2.3.1

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"	  		
		
		
RUN mkdir nohup
RUN jupyter notebook --generate-config			
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main
