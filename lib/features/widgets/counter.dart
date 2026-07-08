import 'package:flutter/material.dart';

import 'icon_for_counter.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          GestureDetector(
            onTap: () {
              setState(() {

                if (counter == 0) {
                  return;
                }

                counter--;

              });
            },
            child: IconForCounter(
              icon: Icons.remove,
            ),
          ),

          Text(
            "$counter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: IconForCounter(
              icon: Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}