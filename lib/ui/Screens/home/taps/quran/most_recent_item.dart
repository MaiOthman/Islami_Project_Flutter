import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';

import '../../../../../utilis/app_assets.dart';
import '../../../../../utilis/app_colors.dart';
import '../../../../../utilis/app_styles.dart';

class MostRecentItem extends StatelessWidget{
  int index;
  MostRecentItem({required this.index});
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: sWidth * 0.7, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(QuranResources.englishQuranSurasList[index], style: AppStyles.Bold24Black,),
            Text(QuranResources.arabicQuranSurasList[index], style: AppStyles.Bold24Black,),
            Text('${QuranResources.versesNumberList[index]} Verses', style: AppStyles.Bold14Black,)
          ],),
        Image.asset(AppAssets.img_most_recent, width: sWidth*0.4)
      ],),
    );
  }

}