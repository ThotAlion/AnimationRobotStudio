#! /bin/bash

echo "----------------------------------"
echo "Update/upgrade"
sudo apt-get -y update
sudo apt-get -y upgrade

echo "----------------------------------"
echo "Install Python 2.7/git dev environment"
sudo apt-get -y install python-dev python-pip ipython git
git config --global credential.helper store

echo "----------------------------------"
echo "Install Pypot"
sudo apt-get -y install libopenblas-dev python-scipy
sudo pip install pypot

echo "----------------------------------"
echo "Install NodeJs 8"
cd ~
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
npm install socket.io
npm install zeromq
npm install express
npm install ip

echo "----------------------------------"
echo "Install ROS Kinetic"
sudo apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential
sudo rosdep init
rosdep update
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws
rosinstall_generator ros_comm --rosdistro kinetic --deps --wet-only --tar > kinetic-ros_comm-wet.rosinstall
wstool init -j8 src kinetic-ros_comm-wet.rosinstall
rosdep install --from-paths src --ignore-src --rosdistro kinetic -y
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release
cd ..
cd ros_catkin_ws/devel_isolated/
source setup.bash
rospack profile
cd ~
echo "source ~/ros_catkin_ws/devel_isolated/setup.bash">>.bashrc


