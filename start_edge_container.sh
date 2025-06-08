#!/bin/bash
roscore &
cd /home/edgeslam/Examples/ROS/Edge_SLAM/
rosrun Edge_SLAM ZED ../../../Vocabulary/ORBvoc.txt ../../RGB-D/TUM2.yaml server < /home/edgeslam/edge_input.txt
