import 'package:flutter/material.dart';
import 'package:islami_project/ui/home/home_screen.dart';
import 'package:islami_project/utilis/app_routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {AppRoutes.homeRouteName: (context)=> HomeScreen()},



    );
  }

}