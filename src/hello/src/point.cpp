#include "ros/ros.h"
#include "geometry_msgs/PolygonStamped.h"
#include "std_msgs/Header.h"
#include <sstream>
#include <string>

int main(int argc, char **argv) {

    // initialize the node "talker" is the node name
    ros::init(argc, argv, "point");
    ros::NodeHandle n;

    // declare a publisher named chatter_pub, "chatter" is the topic name
    // maximum buffer is 1000, after then it throws away old message
    // std_msgs::String is datatype of the message
    ros::Publisher chatter_pub = n.advertise<geometry_msgs::PolygonStamped>("point", 1000);
    
    // frequency of loop
    ros::Rate loop_rate(10);

    int count = 0;
    while (ros::ok()) {
        // create the message holder
        geometry_msgs::PolygonStamped msg;
	geometry_msgs::Point32 p;

	p.x = 9;
	p.y = 4;
	p.z = 0;
	msg.polygon.points.push_back(p);

	p.x = 3;
	p.y = 2;
	p.z = 0;
	msg.polygon.points.push_back(p);

	p.x = 1;
	p.y = 3;
	p.z = 0;
	msg.polygon.points.push_back(p);

	std::stringstream ss;
	ss << "frame " << count;

        msg.header.frame_id = ss.str();
        // publish to topic
        chatter_pub.publish(msg);

        // in case of call back
        ros::spinOnce();
	count++;

        // makes up for the rest of the time to get to 10Hz
        // as specified in ros::Rate
        loop_rate.sleep();
    }

    return 0;
}
