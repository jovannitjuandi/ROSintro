#include "ros/ros.h"
#include "std_msgs/String.h"

// this function is called everytime a message comes from chatter topic
void chatterCallback(const std_msgs::String::ConstPtr&msg) {
    ROS_INFO("I heard: [%s]", msg->data.c_str());
}

int main(int argc, char **argv) {
    // initialize the node "listener" is the node name
    ros::init(argc, argv, "listener");

    ros::NodeHandle n;
    // declare a subscriber named sub, "chatter" is the topic it subscribe to
    ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

    // enters loop, calling message callbacks as fast as possible
    ros::spin();

    return 0;
}
