import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';

import '../../../../../utilis/app_assets.dart';
import '../../../../../utilis/app_colors.dart';
import '../../../../../utilis/app_styles.dart';

class SuraContent extends StatelessWidget{
  String suraString;
  int index;
SuraContent({required this.suraString, required this.index});
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;

    return Stack( alignment: Alignment.center,
      children: [Image.asset(AppAssets.frame),
        Column(children: [Padding(
          padding: EdgeInsets.symmetric(vertical: sHeight* 0.02),
          child: Text(QuranResources.arabicQuranSurasList[index], style: AppStyles.Bold24Primary,),
        ),
          suraString.isEmpty? Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)):
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: sHeight * 0.03,horizontal: sWidth*0.07),
              child:
                  SingleChildScrollView(child:
                  Text(suraString, style: AppStyles.Bold20Primary, textDirection: TextDirection.rtl, textAlign: TextAlign.center,)),

            ),
          ), SizedBox(height: sHeight * 0.12)
        ],)

      ],
    );
  }

}