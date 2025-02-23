import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String title;
  final String screbt;
  final double width;
  final double height;

  const ContainerText(
      {super.key,
      required this.title,
      required this.screbt,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                screbt,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}
