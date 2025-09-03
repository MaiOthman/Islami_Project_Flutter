import 'dart:core';

import 'package:flutter/material.dart';

import '../../../../../utilis/app_assets.dart';
import '../../../../../utilis/app_styles.dart';

class SuraItem extends StatelessWidget{
  String englishName;
  String arabicName;
  String versesNumber;
  int index;
  SuraItem({required this.englishName, required this.arabicName, required this.versesNumber, required this.index});
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return  Row(children: [Stack(alignment: Alignment.center,children:
    [Image.asset(AppAssets.frame_num_aya, width: sWidth*0.15, height: sHeight*0.1,),
      Text(index.toString(), style: AppStyles.Bold20White)],),
      SizedBox(width: sWidth*0.04,),
      Column(crossAxisAlignment:CrossAxisAlignment.start, children: [
        Text(englishName, style: AppStyles.Bold20White,),
        Text(versesNumber, style: AppStyles.Bold14White,)
      ],),
      Spacer(),
      Text(arabicName, style: AppStyles.Bold20White)


    ]);
  }

}