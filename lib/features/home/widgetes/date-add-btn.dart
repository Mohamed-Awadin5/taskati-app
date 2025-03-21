import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-colors.dart';
import 'package:taskati/core/utls/helpers/extensions.dart';
import 'package:taskati/features/add-task/widgets/add-task.dart';

class Dateaddbtn extends StatelessWidget {
  const Dateaddbtn({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('october 10,2021\ntoday ', style: TextStyle())),
        InkWell(
          onTap: () {
            context.push(Addtask());
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Addtask()),
            // );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              color: Appcolors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.add, color: Colors.white),
                Text('add task', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
