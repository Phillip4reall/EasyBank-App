import 'package:flutter/material.dart';

class BottomvigationBar extends StatelessWidget {
  const BottomvigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.lightGreen, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: 36,
                height: 36,
                child: Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: 36,
                height: 36,
                child: Icon(
                  Icons.card_giftcard,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: 36,
                height: 36,
                child: Icon(
                  Icons.analytics,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: 36,
                height: 36,
                child: Icon(
                  Icons.people,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
