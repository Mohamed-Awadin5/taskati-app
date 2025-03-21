import 'package:flutter/material.dart';

class Customtextfromfieldwithtitle extends StatelessWidget {
  final String title;
  final String hintText;
  final Widget? suffixicon;
  final bool enabled;
  const Customtextfromfieldwithtitle(Null Function() param0, {
    super.key,
    required this.title,
    required this.hintText,
    required this.suffixicon,
    this.enabled = true,
    required bool readonly,
    required Null Function() ontap,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 18)),
        TextFormField(
          decoration: InputDecoration(
            enabled: enabled,
            suffixIcon: suffixicon,
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
