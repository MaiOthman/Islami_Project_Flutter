import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class ContainerMwaqet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width*0.2,
      height: height*0.12,
      padding: EdgeInsetsGeometry.all(8),
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [AppColors.blackColor, AppColors.pieg],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(children: [
        Text('Dhuhr', style: AppStyles.Bold14White),
        Text('01:01',style: AppStyles.Bold24White ),
        Text('PM', style: AppStyles.Bold14White)
      ],),
    );
  }

}