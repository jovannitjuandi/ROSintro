#include "ros/ros.h"
#include "std_msgs/String.h"
#include "hello/Num.h"
#include <sstream>

int main(int argc, char **argv) {

    // initialize the node "Num_Pub" is the node name
    ros::init(argc, argv, "Num_Pub");
    ros::NodeHandle n;

    // declare a publisher named chatter_pub, "topic" is the topic name
    // maximum buffer is 1000, after then it throws away old message
    ros::Publisher chatter_pub = n.advertise<hello::Num>("topic", 1000);
    
    // frequency of loop
    ros::Rate loop_rate(10);

    int count = 0;

    while (ros::ok()) {
        // create the message holder
        hello::Num msg;
        std::stringstream ss;


        ss << "data #" << count;
        msg.first_name.data = ss.str();
        msg.coordinate.x = count*5;
        msg.coordinate.y = (count*0.3)+2;
        msg.coordinate.z = (count+0.5)*4;

        // replacement for printf or cout
        ROS_INFO("publishing: %s", msg.first_name.data.c_str());

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
