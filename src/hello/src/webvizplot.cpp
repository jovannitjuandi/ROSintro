#include "ros/ros.h"
#include <sstream>

int main(int argc, char **argv) {

    // initialize the node "talker" is the node name
    ros::init(argc, argv, "webvizplot");
    ros::NodeHandle n;

    // declare a publisher named chatter_pub, "chatter" is the topic name
    // maximum buffer is 1000, after then it throws away old message
    // std_msgs::String is datatype of the message
    ros::Publisher chatter_pub = n.advertise<webviz_msgs::TwoDimensionalPlotDatapoint>("webvizplot", 1000);
    
    // frequency of loop
    ros::Rate loop_rate(10);

    while (ros::ok()) {
        // create the message holder
        webviz_msgs::TwoDimensionalPlotDatapoint msg;

	// initialize data
	msg.order = 2;
	msg.label = "This is Order two";
	msg.backgroundColor = "red";
	msg.borderColor = "black";
	msg.borderDash = {5, 5};
	msg.borderWidth = 1;
	msg.pointBackgroundColor = "blue";
	msg.pointBorderColor = "green";
	msg.pointBorderWidth = "";
	msg.pointRadius = "3";

	msg.pointStyle = "circle";
	msg.lineTension = 2;

	geometry_msgs::Point p;
	p.x = 9;
	p.y = 4;
	p.z = 0;

	msg.data.push_back(p);

        
        // publish to topic
        chatter_pub.publish(msg);

        // in case of call back
        ros::spinOnce();

        // makes up for the rest of the time to get to 10Hz
        // as specified in ros::Rate
        loop_rate.sleep();
    }

    return 0;
}
