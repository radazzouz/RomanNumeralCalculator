#!/usr/bin/env bash

set -e

VIDEO_REPLAYS=$(find ~/Library/Developer/CoreSimulator/Devices -type f -name 'screencap-*.mp4')
if [$VIDEO_REPLAYS == ""]; then
   echo "Test failed: could not find any Video Replays."
   exit -1;
else
   echo "Video Replays $VIDEO_REPLAYS."
fi