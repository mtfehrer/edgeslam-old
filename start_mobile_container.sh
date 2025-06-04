#!/bin/bash

#source /opt/ros/melodic/setup.bash
#export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/edgeslam/Examples/ROS
#./build_zed.sh
#check if build already happened
if [ ! -f "/home/edgeslam/Examples/ROS/Edge_SLAM/RGBD" ]; then
    ./build_ros.sh
fi
roscore &
cd Examples/ROS/Edge_SLAM/
mkdir frames
rosrun Edge_SLAM RGBD ../../../Vocabulary/ORBvoc.txt ../../RGB-D/TUM2.yaml client < /home/edgeslam/mobile_input.txt
