import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';

class SebhaTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
        textDirection: TextDirection.rtl, textAlign: TextAlign.center,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor),
      ),
      Image.asset(AppAssets.sebha_head),
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(AppAssets.sebha_body),
          Column(children: [
            Text("سبحان الله",   textDirection: TextDirection.rtl, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor),),
            Text("30",   textDirection: TextDirection.rtl, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor),)
          ],)

        ],
      )
    ],);
  }


}