import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task2_flutter_ntii/Home/widget/app_image.dart';
import 'package:task2_flutter_ntii/Home/widget/catgory.dart';
import 'package:task2_flutter_ntii/Home/widget/taps.dart';


class HomeScreen extends StatelessWidget {
  static String routName = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.arrowBack,
        //fit: BoxFit.scaleDown,width: 24,height: 24,
        )),
        title: const Text(
          'Today Tasks ',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: Color(0xff24252C),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCEEBDC),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(70, 28),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add',
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Taps(
                  title: 'All',
                ),
                Taps(
                  title: 'Future',
                ),
                Taps(
                  title: 'Missed',
                ),
                Taps(
                  title: 'Done',
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Text(
                  'Results :',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff24252C),
                  ),
                ),
                Text(
                  '5',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff24252C),
                      backgroundColor: Color(0xffCEEBDC)),
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
           const Column(
              children: [
                Catgory(
                  title: 'Work Task',
                  titlex: 'Future',
                  titlep: 'Go to supermarket to buy some milk &\n eggs',
                  colorrd: Colors.black,
                  iconData: Icons.work,
                ),
                SizedBox(
                  height: 10,
                ),
                Catgory(
                  title: 'Work Task',
                  titlex: 'Done',
                  titlep: 'Go to supermarket to buy some milk &\n eggs',
                  colorrd: Colors.black,
                  iconData: Icons.work,
                ),
                SizedBox(
                  height: 10,
                ),
                Catgory(
                  title: 'Home Task',
                  titlex: 'Done',
                  titlep: 'Add new feature for Do It app and\n commit it',
                  colorrd: Color(0xffFF0084),
                  iconData: Icons.home,
                ),
                SizedBox(
                  height: 10,
                ),
                Catgory(
                  title: 'Personal Task',
                  titlex: 'In Progress',
                  titlep: 'Improve my English skills by trying to\n speek',
                  colorrd: Colors.green,
                  iconData: Icons.person,
                ),
                SizedBox(
                  height: 10,
                ),
                Catgory(
                  title: 'Work Task',
                  titlex: 'Done',
                  titlep: 'Add new feature for Do It app and\n commit it',
                  colorrd: Color(0xffFF0084),
                  iconData: Icons.home,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
