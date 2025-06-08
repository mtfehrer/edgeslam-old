#!/bin/bash
source /opt/ros/melodic/setup.bash
source /home/catkin_ws/devel/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/edgeslam/Examples/ROS
roscore &
cd /home/edgeslam/Examples/ROS/Edge_SLAM/
rosrun Edge_SLAM ZED ../../../Vocabulary/ORBvoc.txt ../../RGB-D/TUM2.yaml client < /home/edgeslam/mobile_input.txt &
sleep 10
roslaunch zed_wrapper zed2.launch
