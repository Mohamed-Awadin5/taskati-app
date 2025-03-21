import 'package:flutter/material.dart';
import 'package:taskati/features/home/widgetes/date-add-btn.dart';
import 'package:taskati/features/home/widgetes/empty-listtask.dart';
import 'package:taskati/features/home/widgetes/home-appbar.dart';
import 'package:taskati/features/home/widgetes/filter-days-rows.dart';
import 'package:taskati/features/home/widgetes/tasks-listview.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            children: [
              Homeappbar(),
              SizedBox(height: 20),
              Dateaddbtn(),
              SizedBox(height: 50),
              Filterdaysrows(),
              SizedBox(height: 20),
              Taskslistview(
                // tasks: tasks,
              ),
              // true ? Emptylisttask() : Taskslistview(),
            ],
          ),
        ),
      ),
    );
  }
}
