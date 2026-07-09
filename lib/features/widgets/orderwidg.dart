import 'package:fiutter/core/helper/app_color.dart';
import 'package:flutter/material.dart';

import '../../core/helper/app_textstyle.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.orderNumber,
    required this.status,
    required this.date,
    required this.price,
    required this.statusColor,
  });

  final String orderNumber;
  final String status;
  final String date;
  final String price;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.primary,
            child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(orderNumber, style: AppTextStyle.homeprod),

                Text(
                  status,
                  style: TextStyle(color: statusColor, fontSize: 14),
                ),

                Text(date, style: AppTextStyle.wight),
              ],
            ),
          ),

          Text(price, style: AppTextStyle.price),
        ],
      ),
    );
  }
}
