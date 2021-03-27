#!/bin/bash

source ~/ws_livox/devel/setup.bash
roslaunch livox_ros_driver livox_lidar_msg.launch & 

sleep 10

source ~/ws_mapping/devel/setup.bash
roslaunch livox_mapping mapping_horizon.launch
