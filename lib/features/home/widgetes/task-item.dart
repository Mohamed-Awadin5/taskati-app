import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-colors.dart';

class Taskitem extends StatelessWidget {
  final Color? color;
  const Taskitem({super.key, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'flutter task 1',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.access_time_sharp, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'october 10,2021',

                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '"I will finish this task today"',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(width: 0.5, height: 50, color: Colors.white),
          SizedBox(width: 10),
          RotatedBox(
            quarterTurns: 3,
            child: Text('To do', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
