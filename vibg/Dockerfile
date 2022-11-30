From nvcr.io/nvidia/pytorch:22.08-py3
LABEL maintainer Jerik "carter7777@qq.com"

# RUN conda config --add channels conda-forge  
# RUN conda install montreal-forced-aligner  
# RUN conda update -c conda-forge kaldi 

RUN pip --no-cache-dir install \
		torch \
		torchvision \
		torchaudio	\
		torch-struct

RUN pip --no-cache-dir install \		
		librosa==0.9.2	\
		nltk==3.7	\
		pandas==1.2.5	\
		pytokenizations==0.7.2	\
		scikit-learn==0.19.2	\
		scipy==1.7.0	\
		seaborn==0.11.1	\
		transformers==4.3.0	\
		transliterate==1.10.2

# RUN python3 -m pip install paddlepaddle-gpu

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"	  		
		
RUN mkdir nohup
# RUN jupyter notebook --generate-config			
# RUN jupyter contrib nbextension install --user
# RUN jupyter nbextension enable codefolding/main
