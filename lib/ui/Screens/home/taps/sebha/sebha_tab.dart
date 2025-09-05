import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';

class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
  List<String> tsbeh = ['سبحان الله', 'الحمدلله', 'لا اله الا الله', 'الله اكبر'];
  int index = 0;
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0;
  int count = 0;
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
          AnimatedRotation(turns: turns, duration: const Duration(seconds: 1),
              child: InkWell(child: Image.asset(AppAssets.sebha_body), onTap: onButtonPressed)),
          Column(children: [
            Text(widget.tsbeh[widget.index],   textDirection: TextDirection.rtl, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor),),
            TextButton(
              onPressed: onButtonPressed, child: Text("${count}",   textDirection: TextDirection.rtl, textAlign: TextAlign.center,
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor)),)
          ],)
        ],
      )
    ],);
  }
  void onButtonPressed(){
    setState(() {
      turns = turns+ 0.03;
      count++;
      if(count == 33){
        count = 0;
        widget.index++;
        if(widget.index == widget.tsbeh.length){
          widget.index = 0;
        }
      }
    });
  }

}