import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_colors.dart';

import '../../../utilis/app_assets.dart';

class BtnNavigationBarItem extends StatefulWidget{
  int selectedIndex = 0;
  @override
  State<BtnNavigationBarItem> createState() => _BtnNavigationBarItemState();
}

class _BtnNavigationBarItemState extends State<BtnNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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