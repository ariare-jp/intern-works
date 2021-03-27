#!/bin/bash

source ~/ws_livox/devel/setup.bash
roslaunch livox_ros_driver livox_lidar_msg.launch & 

sleep 5

python ~/livox_detection_simu/livox_detection_simu.py &

sleep 5

rviz -d ~/livox_detection_simu/config/show.rviz