#! /bin/bash
#
# Diffusion youtube avec ffmpeg
# Configurer youtube avec une résolution 720p. La vidéo n'est pas scalée.

input_youtube_url=$1;
output_rtmp_url=$2;

VBR="2500k"                                    # Bitrate de la vidéo en sortie
FPS="30"                                       # FPS de la vidéo en sortie
QUAL="medium"                                  # Preset de qualité FFMPEG


ffmpeg \
    -i "$input_youtube_url" -deinterlace \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale 3 -b:a 712000 -bufsize 512k \
    -f flv "$output_rtmp_url"