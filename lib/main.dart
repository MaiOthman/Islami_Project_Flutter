import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/home_screen.dart';
import 'package:islami_project/ui/Screens/intro/introduction_screen.dart';
import 'package:islami_project/utilis/app_routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introRoutName,
      routes: {
        AppRoutes.introRoutName:(context)=> MyIntroductionScreen(),
        AppRoutes.homeRouteName: (context)=> HomeScreen()},



    );
  }

}