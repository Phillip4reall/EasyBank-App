import 'package:easybank/widgets/textfont.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 23,
              backgroundColor: Colors.black26,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hassan kemi',
                  style: textfont(Colors.black, 15, FontWeight.normal),
                ),
                Text(
                  'jun 3th, 2024',
                  style: textfont(Colors.black, 10, FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        Text('+ #120.00',
            style: textfont(
              Colors.green,
              20,
              FontWeight.bold,
            )),
      ],
    );
  }
}
