import 'package:flutter/material.dart';
import 'package:task2_flutter_ntii/Edit%20Task/edit_task.dart';
import 'package:task2_flutter_ntii/Home/home_screen.dart';
import 'package:task2_flutter_ntii/Home/widget/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      
        fontFamily: 'LexendDeca',
        scaffoldBackgroundColor:AppColors.primary,
        appBarTheme:const AppBarTheme(
          backgroundColor: AppColors.primary,
        ),
      ),
      routes: {
        HomeScreen.routName:(_) =>const HomeScreen(),
        EditTask.routName: (_) =>const EditTask(),
      
      },
      initialRoute: HomeScreen.routName,
    );
  }
}

