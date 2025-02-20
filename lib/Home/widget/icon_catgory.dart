import 'package:flutter/material.dart';

class IconCatgory extends StatelessWidget {
  final Color colorr;
  final IconData iconData;
   IconCatgory({required this.colorr, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
          color: colorr,
           borderRadius: BorderRadius.circular(5)),
      child:  Icon(
       iconData,
        size: 12,
        color: Colors.white,
      ),
    );
  }
}
