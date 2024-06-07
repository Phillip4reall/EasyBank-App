import 'package:easybank/widgets/textfont.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: textfont(Colors.lightGreen.shade800, 18, FontWeight.normal),
        ),
      ),
    );
  }
}
