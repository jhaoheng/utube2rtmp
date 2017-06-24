#!/bin/bash


if [[ $1 == 'start' ]]; then
    echo "start";
    source ./env.sh

    bash feeder.sh $input_youtube_url $output_rtmp_url
else
    echo "stop";
    unset input_youtube_url output_rtmp_url
fi


# show
echo "input  : "$input_youtube_url
echo "output : "$output_rtmp_url