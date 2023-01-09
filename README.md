# WhisperSubsWindows
Part of a video tutorial on how to setup a semi-automated system to generate subtitles for your video files.

Downloads
VC Redistributable 
https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170

Whisper CPP 
https://github.com/ggerganov/whisper.cpp/releases

Model
https://ggml.ggerganov.com/ggml-model-whisper-base.en.bin

FFMPEG
https://www.gyan.dev/ffmpeg/builds/
        https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip


Commands
    Convert video file to wav audio file using ffmpeg
    ffmpeg.exe -i "Best Movie.mp4" -ar 16000 -acodec pcm_s16le BestMovie.wav

    Generate subtitles from audio file using Whisper cpp
    main.exe -m C:\SubsGen\whisper\ggml-model-whisper-base.en.bin "BestMovie.wav" -osrt
