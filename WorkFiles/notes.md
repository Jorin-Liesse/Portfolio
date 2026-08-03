5 videos | webM AV1 and mp4 H.264 | 1280×720 24fps no audio | multicore
ffmpeg -i input.mp4 -c:v libaom-av1 -b:v 0 -crf 30 -cpu-used 4 -tiles 2x2 -row-mt 1 -threads 8 -vf "scale=1280:720,fps=24" -an output.webm

ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 30 -cpu-used 4 -tiles 2x2 -row-mt 1 -threads 8 -vf "scale=1280:720,fps=24" -an output.h264.mp4

11 images | AVIF and JPG | 960x540
ffmpeg -i input.png -vf "scale=960:540" -c:v libaom-av1 -crf 10 -b:v 0 output.avif
ffmpeg -i input.png -vf "scale=960:540" -qscale:v 2 output.jpg

ffmpeg -i page-DAE-Artisans-Desk.png -vf "scale=960:540" -c:v libaom-av1 -crf 10 -b:v 0 page-DAE-Artisans-Desk.avif
ffmpeg -i page-DAE-roboddy.png -vf "scale=960:540" -c:v libaom-av1 -crf 10 -b:v 0 page-DAE-roboddy.avif

ffmpeg -i trailer-light-bridger.mp4 -c:v libaom-av1 -b:v 0 -crf 30 -vf "scale=1280:720,fps=24" -an -cpu-used 4 trailer-light-bridger.av1.webm
