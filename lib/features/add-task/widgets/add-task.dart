import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-colors.dart';
import 'package:taskati/features/add-task/widgets/custom-textfromfield-withtitle.dart';

class Addtask extends StatelessWidget {
  const Addtask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Appcolors.primaryColor),
        centerTitle: true,
        title: Text(
          'Add Task',
          style: TextStyle(
            color: Appcolors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Customtextfromfieldwithtitle(
              enabled: true,
              () {}, // Provide
              title: 'Task Title',
              hintText: 'Enter Task Title',
              suffixicon: null,
              readonly: true,
              ontap: () {
                // Add your nonTap logic here
              },
            ),
            SizedBox(height: 20),
            Customtextfromfieldwithtitle(
              () {}, // Provide the required positional argument
              ontap: () => null,
              title: 'Task Description',
              hintText: 'Enter Task Description',
              suffixicon: null,
              readonly: true,
              enabled: true,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2026),
                );
              },
              child: Customtextfromfieldwithtitle(
                () {}, // Provide the required positional argument
                enabled: false,
                title: 'Task Date',
                hintText: '12/10/2021',
                suffixicon: Icon(Icons.calendar_today),
                readonly: false,
                ontap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showTimePicker(context: context, initialTime: TimeOfDay.now());
                    },
                    child: Customtextfromfieldwithtitle(
                      () {}, // Provide the required positional argument
                      enabled: true,
                      readonly: false,
                      title: 'start time',
                      hintText: '2:00pm',
                      suffixicon: null,
                      ontap: () {},
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Customtextfromfieldwithtitle(
                    enabled: true,
                    () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    },
                    readonly: true,
                    title: 'end time',
                    hintText: '3:00pm',
                    suffixicon: null,
                    ontap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
