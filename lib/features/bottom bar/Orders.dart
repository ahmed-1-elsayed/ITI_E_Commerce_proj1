import 'package:flutter/material.dart';

import '../../core/helper/app_color.dart';
import '../../core/helper/app_textstyle.dart';

import '../widgets/orderwidg.dart';

class Orders extends StatelessWidget {
  Orders({super.key});

  final List<String> orderNumber = [
    "Order #345",
    "Order #346",
    "Order #347",
    "Order #345",
    "Order #346",
    "Order #347",
  ];

  final List<String> status = [
    "Delivered",
    "Cancelled",
    "Delivered",
    "Delivered",
    "Cancelled",
    "Delivered",
  ];

  final List<Color> statusColor = [
    AppColors.green,
    AppColors.red,
    AppColors.green,
    AppColors.green,
    AppColors.red,
    AppColors.green,
  ];

  final List<String> date = [
    "October 26, 2014",
    "October 14, 2016",
    "July 26, 2017",
    "October 26, 2014",
    "October 14, 2016",
    "July 26, 2017",
  ];

  final List<String> price = [
    "\$700",
    "\$452",
    "\$281",
    "\$700",
    "\$452",
    "\$281",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.primary),
        title: Text("Orders", style: AppTextStyle.title),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Ongoing", style: AppTextStyle.homeprod),

                Column(
                  children: [
                    Text("History", style: AppTextStyle.price),

                    SizedBox(height: 5),

                    Container(width: 70, height: 2, color: AppColors.primary),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: orderNumber.length,
                itemBuilder: (context, index) {
                  return OrderItem(
                    orderNumber: orderNumber[index],
                    status: status[index],
                    statusColor: statusColor[index],
                    date: date[index],
                    price: price[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
