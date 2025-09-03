import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/home_screen.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/sura_details.dart';
import 'package:islami_project/ui/Screens/intro/introduction_screen.dart';
import 'package:islami_project/utilis/app_routes.dart';
import 'package:islami_project/utilis/app_theme.dart';

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
        AppRoutes.homeRouteName: (context)=> HomeScreen(),
        AppRoutes.suraDetailsName: (context) => SuraDetails()
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,

    );
  }

}