import 'package:flutter/material.dart';

import '../../../../../utilis/app_styles.dart';
import 'container_mwaqet.dart';

class AzanMwaqetList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Row(children: [
      ],),
        SizedBox(
          width: double.infinity,
          height: height * 0.15,
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
          ],)
      ],
    );
  }
}