FROM python:3.8.6-slim-buster

RUN apt-get update -qq \
 && apt-get install -qqy --no-install-recommends \
      ffmpeg \
      libportaudio2 \
      libportaudiocpp0 \
      libsndfile1-dev \
      portaudio19-dev \
      pulseaudio \
      python3-pyaudio \
      gcc \
      python3-dev \
      alsa-utils \
 && rm -rf /var/lib/apt/lists/*
	
RUN pip3 install pyaudio && cp /usr/share/sounds/alsa/Front_Center.wav /Front_Center.wav

COPY play.py /play.py
#COPY requirements.txt /requirements.txt

CMD ["/bin/sh"]
