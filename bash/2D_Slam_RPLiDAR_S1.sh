#!/bin/bash

sudo chmod 666 /dev/ttyUSB0 &

source ~/ws_rplidar/devel/setup.bash
roslaunch rplidar_ros rplidar_s1.launch &

sleep 10

source ~/ws_slam_rplidar/devel/setup.bash
roslaunch hector_slam_launch tutorial.launch
