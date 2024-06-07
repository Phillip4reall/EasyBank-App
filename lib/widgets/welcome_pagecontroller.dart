//import 'package:easybank/widgets/textfont.dart';
import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "images/a.png",
          //scale: 1,
          width: 470,
          height: 500,
        ),
        // Text(
        //  maxLines: 2,
        //  "welcome to this place",
        //  style: textfont(Colors.white, 25, FontWeight.bold))
      ],
    );
  }
}
