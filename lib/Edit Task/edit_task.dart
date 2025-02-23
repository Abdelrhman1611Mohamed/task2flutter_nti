import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task2_flutter_ntii/Home/elvetButon.dart';
import 'package:task2_flutter_ntii/Home/home_screen.dart';
import 'package:task2_flutter_ntii/Home/widget/app_colors.dart';
import 'package:task2_flutter_ntii/Home/widget/app_image.dart';
import 'package:task2_flutter_ntii/Home/widget/container_text.dart';
import 'package:task2_flutter_ntii/Home/widget/contanier_icon_text.dart';

class EditTask extends StatelessWidget {
  static const String routName = 'EditTask';
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routName);
            },
            icon: SvgPicture.asset(AppIcons.arrowBack)),
        title:const Text('Edit Task'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 30),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 28, vertical: 50),
        child: ListView(
          children:const [
            Column(
              children: [
                Text(
                  "In Progress\nBelieve you can, and you're halfway there. ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                ContanierIconText(
                  title: 'Task Group',
                  screbt: 'Home',
                  color1: AppColors.colorIcon,
                  color2: AppColors.backcolorIcon,
                  iconss: Icons.home,
                ),
                SizedBox(
                  height: 10,
                ),
                ContainerText(
                  width: 331,
                  height: 61,
                  title: 'Task Name',
                  screbt: 'Grocery Shopping App',
                ),
                SizedBox(
                  height: 10,
                ),
                ContainerText(
                  width: 331,
                  height: 142,
                  title: 'Description',
                  screbt:
                      'Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products.',
                ),
                SizedBox(
                  height: 10,
                ),
                ContanierIconText(
                  title: 'Star Date',
                  screbt: '01 May, 2022 , 10:00 am',
                  color1: AppColors.colorsGreen,
                  color2: Colors.white,
                  iconss: Icons.calendar_month,
                ),
                SizedBox(
                  height: 10,
                ),
                ContanierIconText(
                  title: 'End Date',
                  screbt: '30 June, 2022 , 10:00 pm',
                  color1: AppColors.colorsGreen,
                  color2: Colors.white,
                  iconss: Icons.calendar_month,
                ),
                SizedBox(
                  height: 15,
                ),
                Elvetbuton(
                  text: 'Mark as Done',
                  colorsBack: AppColors.colorsGreen,
                  bprdeColor: AppColors.colorsGreen,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Elvetbuton(
                  text: 'Mark as Done',
                  colorsBack: Colors.white,
                  bprdeColor: AppColors.colorsGreen,
                  textColor: AppColors.colorsGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
