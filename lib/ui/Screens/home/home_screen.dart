import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/bottom_navigation_bar_item.dart';
import 'package:islami_project/ui/Screens/home/taps/hadeth/hadeth_tab.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_tab.dart';
import 'package:islami_project/ui/Screens/home/taps/radio/radio_tab.dart';
import 'package:islami_project/ui/Screens/home/taps/sebha/sebha_tab.dart';
import 'package:islami_project/ui/Screens/home/taps/time/time_tab.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';

class HomeScreen extends StatefulWidget{
  int selectedIndex = 0;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> BgsList = [AppAssets.quran_bg, AppAssets.hadeth_bg, AppAssets.sebha_bg,
    AppAssets.radio_bg, AppAssets.time_bg];
  List<Widget> widgetList = [QuranTab(), HadethTab(),SebhaTab(), RadioTab(), TimeTab()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(BgsList[widget.selectedIndex]),
        fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        body: Column(children: [
          Image.asset(AppAssets.islami_title),
          Expanded(child: widgetList[widget.selectedIndex])
        ],
        ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: widget.selectedIndex,
         onTap: (index){
           setState(() {
             widget.selectedIndex = index;
           });
         },
         items:
         [
           btnItem(image: AppAssets.icon_quran, label: 'Quran', index: 0),
           btnItem(image: AppAssets.icon_hadeth, label: 'Hadeth', index: 1),
           btnItem(image: AppAssets.icon_sebha, label: 'Sebha', index: 2),
           btnItem(image: AppAssets.icon_radio, label: 'Radio', index: 3),
           btnItem(image: AppAssets.icon_time, label: 'Time', index: 4)
         ],
       )

      ),
    );
  }
  BottomNavigationBarItem btnItem({required int index, required String image, required String label}){
    return BottomNavigationBarItem(
        icon: index == widget.selectedIndex? Container(
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                color: AppColors.blackContainerColor
            ),
            padding: EdgeInsetsGeometry.symmetric(vertical: 8, horizontal: 16),
            child: ImageIcon(AssetImage(image))):ImageIcon(AssetImage(image)),
        label: label);
  }
}

