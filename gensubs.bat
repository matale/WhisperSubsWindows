ffmpeg.exe -i "%~1" -ar 16000 -acodec pcm_s16le "%~1.wav"
main.exe -m C:\SubsGen\whisper\ggml-model-whisper-base.en.bin "%~1.wav" -osrt
del "%~1.wav"
