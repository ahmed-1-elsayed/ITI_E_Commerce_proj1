import 'package:flutter/material.dart';

import '../../core/helper/app_color.dart';
import '../../core/helper/app_textstyle.dart';
import '../widgets/profile_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange),

        title: Text(
          "Profile",
          style: AppTextStyle.title,
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),

          ProfileListTileItem(title: "Edit Profile", icon: Icons.person),

          ProfileListTileItem(title: "Change Password", icon: Icons.key),

          ProfileListTileItem(title: "My Cards", icon: Icons.wallet),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Text(
              "App Settings",
              style: AppTextStyle.title.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           SizedBox(height: 15,),
          SwitchListTile(
            value: isNotification,
            onChanged: (value) {
              setState(() {
                isNotification = value;
              });
            },

            secondary: Icon(
              Icons.notifications,
              color: AppColors.brown,
              size: 30,
            ),

            title: Text("Notifications", style: AppTextStyle.heading),

            activeTrackColor: AppColors.primary,

            inactiveTrackColor: Colors.grey.shade400,
          ),

          ListTile(
            leading: Icon(Icons.language, color: AppColors.brown, size: 30),

            title: Text("Language", style: AppTextStyle.heading),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("English", style: AppTextStyle.body),

                Icon(Icons.keyboard_arrow_right, color: AppColors.brown),
              ],
            ),
          ),
          
          ProfileListTileItem(title: 'Logout', icon: Icons.logout,showArrow: false,),
            
            
            
            
            

        ],
      ),
    );
  }
}
