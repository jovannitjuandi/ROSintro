#include "ros/ros.h"
#include "std_msgs/String.h"
#include "hello/Num.h"

// this function is called everytime a message comes from "topic" topic
void chatterCallback(const hello::Num::ConstPtr&msg) {
    ROS_INFO("[%s]: [x: %.2f] [y: %.2f] [z: %.2f]", msg->first_name.data.c_str(), msg->coordinate.x, msg->coordinate.y, msg->coordinate.z);
}

int main(int argc, char **argv) {
    // initialize the node "Num_Sub" is the node name
    ros::init(argc, argv, "Num_Sub");

    ros::NodeHandle n;
    // declare a subscriber named sub, "topic" is the topic it subscribes to
    ros::Subscriber sub = n.subscribe("topic", 1000, chatterCallback);

    // enters loop, calling message callbacks as fast as possible
    ros::spin();

    return 0;
}
