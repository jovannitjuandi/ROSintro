#include "../include/joy_listener.hpp"

int main (int argc, char **argv) {

    ros::init(argc, argv, "jlistener");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("joy", 1000, chatterCallback);
    chatter_pub = n.advertise<geometry_msgs::TwistStamped>("velocity", 1000);

    ros::spin();

    return 0;
}


void chatterCallback(const sensor_msgs::Joy::ConstPtr&msg) {
    float horizontal = (-1*msg->axes[0]);
    float vertical = (+1*msg->axes[1]);
    float z = ((-1*msg->axes[5]) - (-1*msg->axes[2]))/2;
    float max_vel = 50;

    geometry_msgs::TwistStamped velocity;

    velocity.twist.linear.x = horizontal*max_vel;
    velocity.twist.linear.y = vertical*max_vel;
    velocity.twist.linear.z = z*max_vel;

    ROS_INFO("Horizontal -> %f", velocity.twist.linear.x);
    ROS_INFO("Vertical   -> %f", velocity.twist.linear.y);
    ROS_INFO("Up n down  -> %f", velocity.twist.linear.z); 
    chatter_pub.publish(velocity);
}

