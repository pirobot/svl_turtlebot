#!/bin/bash

rosparam set use_sim_time false

if [ -z "$1" ]
then
	out_file="rosbag_test"
else
	out_file=$1
fi

rosbag record -b 512 --lz4 -o $out_file \
/camera/depth/camera_info \
/camera/depth/image_raw/compressed \
/camera/depth/image_raw/compressed/parameter_descriptions \
/camera/depth/image_raw/compressed/parameter_updates \
/camera/depth/image_raw/compressedDepth \
/camera/depth/image_raw/compressedDepth/parameter_descriptions \
/camera/depth/image_raw/compressedDepth/parameter_updates \
/camera/depth_registered/camera_info \
/camera/depth_registered/hw_registered/image_rect/compressed \
/camera/depth_registered/hw_registered/image_rect/compressed/parameter_descriptions \
/camera/depth_registered/hw_registered/image_rect/compressed/parameter_updates \
/camera/depth_registered/hw_registered/image_rect/compressedDepth \
/camera/depth_registered/hw_registered/image_rect/compressedDepth/parameter_descriptions \
/camera/depth_registered/hw_registered/image_rect/compressedDepth/parameter_updates \
/camera/depth_registered/hw_registered/image_rect_raw/compressed \
/camera/depth_registered/hw_registered/image_rect_raw/compressed/parameter_descriptions \
/camera/depth_registered/hw_registered/image_rect_raw/compressed/parameter_updates \
/camera/depth_registered/hw_registered/image_rect_raw/compressedDepth \
/camera/depth_registered/hw_registered/image_rect_raw/compressedDepth/parameter_descriptions \
/camera/depth_registered/hw_registered/image_rect_raw/compressedDepth/parameter_updates \
/camera/depth_registered/image/compressed \
/camera/depth_registered/image/compressed/parameter_descriptions \
/camera/depth_registered/image/compressed/parameter_updates \
/camera/depth_registered/image/compressedDepth \
/camera/depth_registered/image/compressedDepth/parameter_descriptions \
/camera/depth_registered/image/compressedDepth/parameter_updates \
/camera/depth_registered/image_raw/compressed \
/camera/depth_registered/image_raw/compressed/parameter_descriptions \
/camera/depth_registered/image_raw/compressed/parameter_updates \
/camera/depth_registered/image_raw/compressedDepth \
/camera/depth_registered/image_raw/compressedDepth/parameter_descriptions \
/camera/depth_registered/image_raw/compressedDepth/parameter_updates \
/camera/depth_registered_rectify_depth/parameter_descriptions \
/camera/depth_registered_rectify_depth/parameter_updates \
/camera/driver/parameter_descriptions \
/camera/driver/parameter_updates \
/camera/ir/camera_info \
/camera/ir/image_raw/compressed \
/camera/ir/image_raw/compressed/parameter_descriptions \
/camera/ir/image_raw/compressed/parameter_updates \
/camera/ir/image_raw/compressedDepth \
/camera/ir/image_raw/compressedDepth/parameter_descriptions \
/camera/ir/image_raw/compressedDepth/parameter_updates \
/camera/projector/camera_info \
/camera/rgb/camera_info \
/camera/rgb/image_color/compressed \
/camera/rgb/image_color/compressed/parameter_descriptions \
/camera/rgb/image_color/compressed/parameter_updates \
/camera/rgb/image_color/compressedDepth \
/camera/rgb/image_color/compressedDepth/parameter_descriptions \
/camera/rgb/image_color/compressedDepth/parameter_updates \
/camera/rgb/image_mono/compressed \
/camera/rgb/image_mono/compressed/parameter_descriptions \
/camera/rgb/image_mono/compressed/parameter_updates \
/camera/rgb/image_mono/compressedDepth \
/camera/rgb/image_mono/compressedDepth/parameter_descriptions \
/camera/rgb/image_mono/compressedDepth/parameter_updates \
/camera/rgb/image_raw/compressed \
/camera/rgb/image_raw/compressed/parameter_descriptions \
/camera/rgb/image_raw/compressed/parameter_updates \
/camera/rgb/image_raw/compressedDepth \
/camera/rgb/image_raw/compressedDepth/parameter_descriptions \
/camera/rgb/image_raw/compressedDepth/parameter_updates \
/camera/rgb/image_rect_color/compressed \
/camera/rgb/image_rect_color/compressed/parameter_descriptions \
/camera/rgb/image_rect_color/compressed/parameter_updates \
/camera/rgb/image_rect_color/compressedDepth \
/camera/rgb/image_rect_color/compressedDepth/parameter_descriptions \
/camera/rgb/image_rect_color/compressedDepth/parameter_updates \
/camera/rgb/image_rect_mono/compressed \
/camera/rgb/image_rect_mono/compressed/parameter_descriptions \
/camera/rgb/image_rect_mono/compressed/parameter_updates \
/camera/rgb/image_rect_mono/compressedDepth \
/camera/rgb/image_rect_mono/compressedDepth/parameter_descriptions \
/camera/rgb/image_rect_mono/compressedDepth/parameter_updates \
/camera/rgb_debayer/parameter_descriptions \
/camera/rgb_debayer/parameter_updates \
/camera/rgb_rectify_color/parameter_descriptions \
/camera/rgb_rectify_color/parameter_updates \
/camera/rgb_rectify_mono/parameter_descriptions \
/camera/rgb_rectify_mono/parameter_updates \
/capability_server/bonds \
/capability_server/events \
/cmd_vel_mux/active \
/cmd_vel_mux/input/navi \
/cmd_vel_mux/input/safety_controller \
/cmd_vel_mux/input/switch \
/cmd_vel_mux/input/teleop \
/cmd_vel_mux/parameter_descriptions \
/cmd_vel_mux/parameter_updates \
/cv_camera_node/camera_info \
/cv_camera_node/image_raw/compressed \
/cv_camera_node/image_raw/compressed/parameter_descriptions \
/cv_camera_node/image_raw/compressed/parameter_updates \
/cv_camera_node/image_raw/compressedDepth \
/cv_camera_node/image_raw/compressedDepth/parameter_descriptions \
/cv_camera_node/image_raw/compressedDepth/parameter_updates \
/cv_camera_node2/camera_info \
/cv_camera_node2/image_raw/compressed \
/cv_camera_node2/image_raw/compressed/parameter_descriptions \
/cv_camera_node2/image_raw/compressed/parameter_updates \
/cv_camera_node2/image_raw/compressedDepth \
/cv_camera_node2/image_raw/compressedDepth/parameter_descriptions \
/cv_camera_node2/image_raw/compressedDepth/parameter_updates \
/diagnostics \
/diagnostics_agg \
/diagnostics_toplevel_state \
/gateway/force_update \
/gateway/gateway_info \
/info \
/interactions/interactive_clients \
/interactions/pairing \
/joint_states \
/joy \
/mobile_base/commands/controller_info \
/mobile_base/commands/digital_output \
/mobile_base/commands/external_power \
/mobile_base/commands/led1 \
/mobile_base/commands/led2 \
/mobile_base/commands/motor_power \
/mobile_base/commands/reset_odometry \
/mobile_base/commands/sound \
/mobile_base/commands/velocity \
/mobile_base/controller_info \
/mobile_base/debug/raw_control_command \
/mobile_base/debug/raw_data_command \
/mobile_base/debug/raw_data_stream \
/mobile_base/events/bumper \
/mobile_base/events/button \
/mobile_base/events/cliff \
/mobile_base/events/digital_input \
/mobile_base/events/power_system \
/mobile_base/events/robot_state \
/mobile_base/events/wheel_drop \
/mobile_base/sensors/bumper_pointcloud \
/mobile_base/sensors/core \
/mobile_base/sensors/dock_ir \
/mobile_base/sensors/imu_data \
/mobile_base/sensors/imu_data_raw \
/mobile_base/version_info \
/mobile_base_nodelet_manager/bond \
/odom \
/rosout \
/rosout_agg \
/scan \       
/teleop_velocity_smoother/parameter_descriptions \
/teleop_velocity_smoother/parameter_updates \
/teleop_velocity_smoother/raw_cmd_vel \
/tf \
/tf_static \
/turtlebot/incompatible_rapp_list \
/turtlebot/rapp_list \
/turtlebot/status \
/zeroconf/lost_connections \
/zeroconf/new_connections


