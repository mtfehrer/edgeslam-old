wget https://download.stereolabs.com/zedsdk/4.2/cu12/ubuntu22
mkdir -p ./src
cd ./src
git clone --recursive https://github.com/stereolabs/zed-ros-wrapper.git
cd ../
rosdep install --from-paths src --ignore-src -r -y
catkin_make -DCMAKE_BUILD_TYPE=Release
source ./devel/setup.bash