import 'package:flutter/material.dart';
import 'package:taskati/features/home/widgetes/task-item.dart';

class Taskslistview extends StatelessWidget {
  const Taskslistview({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder:
            (context, index) => Dismissible(
              key: UniqueKey(),

              background: Container(
                color: Colors.green,
                child: Row(
                  children: [
                    Icon(Icons.done),
                    SizedBox(width: 10),
                    Text('completed'),
                  ],
                ),
              ),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  print('completed');
                } else {
                  print('delete');
                }
              },
              secondaryBackground: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text('delete'),
                    SizedBox(width: 10),
                    Icon(Icons.delete),
                  ],
                ),
              ),

              child: Taskitem(color: colors[index]),
            ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 4,
      ),
    );
  }
}

List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
