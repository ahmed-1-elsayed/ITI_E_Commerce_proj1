import 'package:flutter/material.dart';

import '../../core/helper/app_color.dart';
import '../../core/helper/app_textstyle.dart';

class ProfileListTileItem extends StatelessWidget {
  const ProfileListTileItem({
    super.key,
    required this.title,
    required this.icon,
    this.showArrow = true,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final bool showArrow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,

      leading: Icon(
        icon,
        color: AppColors.brown,
        size: 30,
      ),

      title: Text(
        title,
        style: AppTextStyle.heading,
      ),

      trailing: showArrow
          ? Icon(
        Icons.keyboard_arrow_right,
        color: AppColors.brown,
      )
          : SizedBox.shrink(),
    );
  }
}