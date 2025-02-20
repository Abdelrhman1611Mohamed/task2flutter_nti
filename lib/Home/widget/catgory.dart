import 'package:flutter/material.dart';
import 'package:task2_flutter_ntii/Home/widget/icon_catgory.dart';

class Catgory extends StatelessWidget {
  final String title;
  final String titlex;
  final String titlep;
  final Color colorrd;
   final IconData iconData;
  const Catgory({super.key, required this.title, required this.titlex ,required this.titlep, required this.colorrd, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      width: 334,
      height: 105,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              IconCatgory(
                colorr: colorrd,
                iconData: iconData,
              ),
              const SizedBox(
                width: 10,
              ),
               Expanded(
                child: Text(
                  title,
                  style:const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                  color:  Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child:  Text(
                  titlex,
                  style:const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
           Row(
            children: [
              Text(
                titlep,
                style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ],
          )
        ],
      ),
    );
  }
}
