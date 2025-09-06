import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class ContainerMwaqetPressed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(16),
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [AppColors.blackColor, AppColors.pieg],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(children: [
        Text('ASR', style: AppStyles.Bold16White),
        Text('04:38',style: AppStyles.Bold32White ),
        Text('PM', style: AppStyles.Bold16White)
      ],),
    );
  }

}