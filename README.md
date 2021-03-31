# pyaudio_test
Trying to get pyaudio working in docker, so far without success.

`docker build -t paulwieland/pyaudio_test .`

`docker run -it --rm --device /dev/snd paulwieland/pyaudio_test /bin/sh`

Once at the shell, run `aplay Front_Center.wav` which should play the audio using alsa. 
Then run `python3 play.py Front_Center.wav` which will attempt to play the audio using python.

Play.py is from http://people.csail.mit.edu/hubert/pyaudio/docs/
