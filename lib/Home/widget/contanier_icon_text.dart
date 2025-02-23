import 'package:flutter/material.dart';

class ContanierIconText extends StatelessWidget {
  final String title;
  final String screbt;
  final IconData iconss;
  final Color color1;
  final Color color2;
  const ContanierIconText(
      {super.key,
      required this.title,
      required this.screbt,
      required this.iconss,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 63,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: color2, borderRadius: BorderRadius.circular(5)),
              child: Icon(
                iconss,
                color: color1,
                size: 20,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(screbt),
              ],
            )
          ],
        ),
      ),
    );
  }
}
