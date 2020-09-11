#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv) {

    // initialize the node "talker" is the node name
    ros::init(argc, argv, "talker");
    ros::NodeHandle n;

    // declare a publisher named chatter_pub, "chatter" is the topic name
    // maximum buffer is 1000, after then it throws away old message
    // std_msgs::String is datatype of the message
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
    
    // frequency of loop
    ros::Rate loop_rate(10);

    int count = 0;
    while (ros::ok()) {
        // create the message holder
        std_msgs::String msg;
        std::stringstream ss;

        ss << "hello world - " << count;
        msg.data = ss.str();

        // replacement for printf or cout
        ROS_INFO("%s", msg.data.c_str());

        // publish to topic
        chatter_pub.publish(msg);

        // in case of call back
        ros::spinOnce();

        // makes up for the rest of the time to get to 10Hz
        // as specified in ros::Rate
        loop_rate.sleep();
        ++count;
    }

    return 0;
}
