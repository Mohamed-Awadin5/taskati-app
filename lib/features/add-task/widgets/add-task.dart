import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskati/core/utls/app-colors.dart';
import 'package:taskati/features/add-task/widgets/custom-textfromfield-withtitle.dart';

class Addtask extends StatefulWidget {
  const Addtask({Key? key}) : super(key: key);

  @override
  State<Addtask> createState() => _AddtaskState();
}

class _AddtaskState extends State<Addtask> {
  late TextEditingController _dateController;
  late TextEditingController _timeController;
  late TextEditingController _endTimeController;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  @override
  void initState() {
    _dateController = TextEditingController();
    _timeController = TextEditingController();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _endTimeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

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
              controller: _titleController,
              enabled: true,
              title: 'Task Title',
              hintText: 'Enter Task Title',
              suffixicon: null,
              readonly: true,
            ),
            SizedBox(height: 20),
            Customtextfromfieldwithtitle(
              controller: _descriptionController,
              title: 'Task Description',
              hintText: 'Enter Task Description',
              suffixicon: null,
              readonly: true,
              enabled: true,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _pickDate();
              },
              child: Customtextfromfieldwithtitle(
                enabled: false,
                title: 'Task Date',
                controller: _dateController,
                hintText: '12/10/2021',
                suffixicon: Icon(Icons.calendar_today),
                readonly: false,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _pickTime();
                    },
                    child: Customtextfromfieldwithtitle(
                      enabled: false,
                      readonly: false,
                      title: 'start time',
                      hintText: '2:pm',
                      suffixicon: null,

                      controller: _timeController,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _pickEndTime();
                    },
                    child: Customtextfromfieldwithtitle(
                      enabled: false,
                      readonly: true,
                      title: 'end time',
                      hintText: '3:00pm',
                      suffixicon: null,
                      controller: _endTimeController,
                    ),
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

  void _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  void _pickTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      final now = DateTime.now();
      final formattedTime = DateFormat.jm().format(
        DateTime(
          now.year,
          now.month,
          now.day,
          pickedTime.hour,
          pickedTime.minute,
        ),
      );

      setState(() {
        _timeController.text = formattedTime;
      });
    }
  }

  void _pickEndTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      final now = DateTime.now();
      final formattedTime = DateFormat.jm().format(
        DateTime(
          now.year,
          now.month,
          now.day,
          pickedTime.hour,
          pickedTime.minute,
        ),
      );

      setState(() {
        _endTimeController.text = formattedTime;
      });
    }
  }
}
