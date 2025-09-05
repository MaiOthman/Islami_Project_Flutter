import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class MyContainer extends StatelessWidget{
  String title;
  Icon volume;
  String image;
  VoidCallback onClick;
  MyContainer({required this.title, required this.volume, required this.image, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(16),
        color: AppColors.primaryColor,
          image: DecorationImage(alignment: Alignment.bottomCenter ,image: AssetImage(image)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          Text(title, style: AppStyles.Bold20Black),
            SizedBox(height: 32),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [InkWell(child: Icon(Icons.play_arrow), onTap: onClick), volume],),
        ],),
      ),
    );
  }

}