#!/usr/bin/env bash

set -e

cd /tmp/sandbox/$BUDDYBUILD_BUILD_ID
VIDEO_REPLAYS=$(find . '*.mp4')
if [$VIDEO_REPLAYS == ""]; then
   echo "Test failed: could not find any Video Replays."
   exit -1;
else
   echo "Video Replays $VIDEO_REPLAYS."
fi