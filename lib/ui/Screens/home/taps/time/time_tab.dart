import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/time/container_azkar.dart';
import 'package:islami_project/ui/Screens/home/taps/time/container_mwaqet.dart';
import 'package:islami_project/ui/Screens/home/taps/time/container_mwaqet_pressed.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class TimeTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsetsGeometry.all(8),
              decoration: BoxDecoration(color: AppColors.braun,
                  borderRadius: BorderRadius.circular(40)),
            ),
            Image.asset(AppAssets.time_shape, fit: BoxFit.fill,
              width: double.infinity, height: double.infinity,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text('16 Jul,\n2024', style: AppStyles.Bold16White),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [Text('Pray Time', style: AppStyles.Bold20LightBlack),
                      Text('Tuesday', style: AppStyles.Bold20Black)],),
                  ),
                  Text('09 Muh,\n1446',style: AppStyles.Bold16White, textAlign: TextAlign.center, )
                ],),
                 SizedBox(
                    width: double.infinity,
                    height: height * 0.12,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ContainerMwaqet(),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: width * 0.02),
                        itemCount: 6),
                  ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Next Pray', style: AppStyles.Bold16LightBlack),
                    Text(' - 02:32', style: AppStyles.Bold16Black,),
                    Icon(Icons.volume_off)
                  ],),
                SizedBox(height: height*0.02,)
              ],

            )
          ],
        ),
      ),
      SizedBox(height: height*0.02),
      Text("Azkar", style: AppStyles.Bold16White),
      SizedBox(height: height*0.02),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        ContainerAzkar(image: AppAssets.evening_azkar, title: 'Evening Azkar'),
        ContainerAzkar(image: AppAssets.morning_azkar, title: 'Morning Azkar')
      ],)
    ],);
  }


}