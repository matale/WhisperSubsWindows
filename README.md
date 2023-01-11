# Whisper Subtitle Generator
Part of a video tutorial on how to setup a semi-automated system to generate subtitles for your video files on Windows.
This uses the Whisper.cpp implementation of OpenAI's Whisper which allows it to run on the CPU and get better performance plus it's possibly easier to get up and running.

Note: This should work on Intel Processors that have the i name i3/i5/i7 etc doesnt work on some Pentium/Celeron processors. 
See https://github.com/ggerganov/whisper.cpp/issues/392 
You can use the utility CPU-Z to check for AVX support on your CPU. 
https://www.cpuid.com/softwares/cpu-z.html

Downloads<br/>

VC Redistributable<br/>
 
https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170

Whisper CPP<br/>
 
https://github.com/ggerganov/whisper.cpp/releases

Model<br/>

https://ggml.ggerganov.com/ggml-model-whisper-base.en.bin

FFMPEG<br/>

https://www.gyan.dev/ffmpeg/builds/
        https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip


Commands<br/>

    Convert video file to wav audio file using ffmpeg
    ffmpeg.exe -i "Best Movie.mp4" -ar 16000 -acodec pcm_s16le BestMovie.wav

    Generate subtitles from audio file using Whisper cpp
    main.exe -m C:\SubsGen\whisper\ggml-model-whisper-base.en.bin "BestMovie.wav" -osrt
