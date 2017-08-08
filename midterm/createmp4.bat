chcp 65001
ffmpeg -loop 1 -f image2 -i "musichardwrite.png" -i 陳羿豐.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k -t 00:01:19.000 -pix_fmt yuv420p music.mp4
