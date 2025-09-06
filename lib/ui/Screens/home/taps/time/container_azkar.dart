import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class ContainerAzkar extends StatelessWidget{
  String image;
  String title;
  ContainerAzkar({required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 16),
      height: height*0.3,
      width: width*0.43,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
          color: AppColors.blackColor
      ,border: BoxBorder.all(color: AppColors.primaryColor, width: 2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Image.asset(image, fit: BoxFit.fill, width:width*0.43 , height: height*0.2),
        Text(title, style: AppStyles.Bold20White)
      ],)
    );
  }

}