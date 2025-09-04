import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';

import '../../../../../utilis/app_assets.dart';
import '../../../../../utilis/app_colors.dart';
import '../../../../../utilis/app_styles.dart';

class SuraContentColumn extends StatefulWidget{
  List<String> suraList;
  int index;
SuraContentColumn({required this.suraList, required this.index});

  @override
  State<SuraContentColumn> createState() => _SuraContentColumnState();
}

class _SuraContentColumnState extends State<SuraContentColumn> {
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;

    return Stack( alignment: Alignment.center,
      children: [Image.asset(AppAssets.frame),
        Column(children: [Padding(
          padding: EdgeInsets.symmetric(vertical: sHeight* 0.02),
          child: Text(QuranResources.arabicQuranSurasList[widget.index], style: AppStyles.Bold24Primary,),
        ),
          widget.suraList.isEmpty? Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)):
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index)=>
                    InkWell(child:Container(
                      margin: EdgeInsetsGeometry.symmetric(horizontal: sWidth*0.08, vertical: sHeight*0.01),
                      padding: EdgeInsetsGeometry.symmetric(horizontal: sWidth*0.02,vertical: sHeight* 0.02),
                      decoration: BoxDecoration(
                        color: selectedIndex == index? AppColors.primaryColor: AppColors.blackColor,
                          border: BoxBorder.all(color: AppColors.primaryColor, width: 2),

                          borderRadius: BorderRadius.circular(16)),
                      child:Text('${widget.suraList[index]}[${index+1}] ', style: selectedIndex == index? AppStyles.Bold20Black:AppStyles.Bold20Primary, textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
                    ),
                    onTap: (){setState(() {selectedIndex = index; });},
                    ),
                separatorBuilder: (context, index)=>SizedBox(),
                itemCount: widget.suraList.length)
          ), SizedBox(height: sHeight * 0.12)
        ],)

      ],
    );
  }
}