#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/Joy.h"
#include "geometry_msgs/TwistStamped.h"
#include <iostream>

ros::Publisher chatter_pub;

void chatterCallback(const sensor_msgs::Joy::ConstPtr&msg);
