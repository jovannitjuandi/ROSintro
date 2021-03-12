#include "ros/ros.h"
#include"geometry_msgs/PoseStamped.h"
#include <sstream>

int main(int argc, char **argv) {

    // initialize the node "talker" is the node name
    ros::init(argc, argv, "posepub");
    ros::NodeHandle n;

    // declare a publisher named chatter_pub, "chatter" is the topic name
    // maximum buffer is 1000, after then it throws away old message
    // std_msgs::String is datatype of the message
    ros::Publisher chatter_pub = n.advertise<geometry_msgs::PoseStamped>("posepub", 1000);
    
    // frequency of loop
    ros::Rate loop_rate(10);


    double count = 0;
    while (ros::ok()) {

	geometry_msgs::PoseStamped msg;

	// initialize data
	msg.pose.position.x = 1 + count;
	msg.pose.position.y = 2 + count;
	msg.pose.position.z = 0 + count;

	msg.pose.orientation.x = 0.5;
	msg.pose.orientation.y = 0.5;
	msg.pose.orientation.z = 0.5;
	msg.pose.orientation.w = 0.5;

        msg.header.frame_id = "frame name";

        // publish to topic
        chatter_pub.publish(msg);

        // in case of call back
        ros::spinOnce();
	count = count + 0.05;

        // makes up for the rest of the time to get to 10Hz
        // as specified in ros::Rate
        loop_rate.sleep();
    }

    return 0;
}
