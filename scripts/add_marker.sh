#!/bin/sh
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find turtlebot_gazebo)/worlds/4_rooms.world" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(rospack find turtlebot_gazebo)/maps/map.yaml" &
sleep 5
#xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch"  &
#sleep 5
xterm -e "roslaunch add_markers rviz_config.launch" &
sleep 5
xterm -e "rosrun add_markers add_markers_test"
