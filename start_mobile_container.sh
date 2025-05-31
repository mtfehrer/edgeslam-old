#!/bin/bash

./build_ros.sh
roscore &
cd Examples/ROS/Edge_SLAM/
rosrun Edge_SLAM RGBD ../../../Vocabulary/ORBvoc.txt ../../RGB-D/TUM2.yaml client < mobile_input.txt
