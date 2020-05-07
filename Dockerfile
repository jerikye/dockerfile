FROM continuumio/anaconda3:latest
FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update
RUN apt-get install -y libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg wget git vim


RUN git clone https://github.com/Rayhane-mamah/Tacotron-2.git

WORKDIR Tacotron-2

RUN pip install -r requirements.txt