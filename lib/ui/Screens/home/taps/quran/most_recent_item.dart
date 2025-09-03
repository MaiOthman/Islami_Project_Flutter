import 'package:flutter/material.dart';

import '../../../../../utilis/app_assets.dart';
import '../../../../../utilis/app_colors.dart';
import '../../../../../utilis/app_styles.dart';

class MostRecentItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: sWidth * 0.04),
      width: sWidth * 0.66, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: AppColors.primaryColor),
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Al-Anbiya', style: AppStyles.Bold24Black,),
            Text('الأنبياء', style: AppStyles.Bold24Black,),
            Text('112 Verses', style: AppStyles.Bold14Black,)
          ],),
        Image.asset(AppAssets.img_most_recent)
      ],),
    );
  }

}