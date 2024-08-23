#!/bin/bash
#
# This script takes a media file as input and time markers and converts to multiple bitrates

usage() {
	echo "$0 <start_time> <duration> <input_file>

	exple: start transcoding from 10s, during 20s:
	$0 10 20 toto.mp4
	"
}

# Exit if less 3 arguments
if [ $# -lt 3 ]; then
	usage
	exit -1
fi

start_time=$1
duration=$2
filename=$3

for bitrate in 1k 10k 100k 1000k; do
	output_file="output_${bitrate}B.mp4"
	echo "=========================================="
	echo "         $output_file                     "
	echo "=========================================="
	ffmpeg -y -ss $start_time -i $filename -c:v libx264 -b:v $bitrate -t $duration $output_file
done

ls -l
