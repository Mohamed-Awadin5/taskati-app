import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-strings.dart';

class Homeappbar extends StatelessWidget {
  const Homeappbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Appstrings.welcomeinhome('mohamed'),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text('have a nice day'),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange, width: 2),
            shape: BoxShape.circle,
            color: Colors.redAccent,
            image: const DecorationImage(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
