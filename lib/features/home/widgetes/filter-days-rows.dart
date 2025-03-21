import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-colors.dart';

class Filterdaysrows extends StatelessWidget {
  const Filterdaysrows({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        daycontainar(isSelected: true),
        daycontainar(),
        daycontainar(),
        daycontainar(),
      ],
    );
  }
}

class daycontainar extends StatelessWidget {
  final bool isSelected;
  const daycontainar({super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Appcolors.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'oct',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Appcolors.primaryColor.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '10',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 10),
          Text('mon', style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

extension on Color {
  copyWith({required Color color}) {}
}
