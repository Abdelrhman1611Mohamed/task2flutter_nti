import 'package:flutter/material.dart';

class Elvetbuton extends StatelessWidget {
  final String text;
  final Color colorsBack;
  final Color bprdeColor;
  final Color textColor;
  const Elvetbuton(
      {super.key,
      required this.text,
      required this.colorsBack,
      required this.bprdeColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize:const Size(400, 24),
            backgroundColor: colorsBack,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide(
                  width: 2,
                  color: bprdeColor,
                ))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ));
  }
}
