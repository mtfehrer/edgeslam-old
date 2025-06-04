#!/bin/bash

source /opt/ros/melodic/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/edgeslam/Examples/ROS
#check if zed stuff exists
if [ ! -d "/home/edgeslam/zed_stuff" ]; then
    mkdir zed_stuff
    cd zed_stuff
    ./download_and_build_zed.sh
    cd ..
fi
#check if build already happened
if [ ! -f "/home/edgeslam/Examples/ROS/Edge_SLAM/RGBD" ]; then
    ./build_ros.sh
fi
roscore &
cd Examples/ROS/Edge_SLAM/
if [ ! -d "/home/edgeslam/Examples/ROS/Edge_SLAM" ]; then
    mkdir frames
fi
rosrun Edge_SLAM ZED ../../../Vocabulary/ORBvoc.txt ../../RGB-D/TUM2.yaml client < /home/edgeslam/mobile_input.txt
