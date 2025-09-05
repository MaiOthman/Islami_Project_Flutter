import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/radio/container.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

class RadioTab extends StatefulWidget{
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool isRadio = false;
  bool isReciter = false;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        myElevatedButton((){setState(() {
          isRadio = true; isReciter = false;
        });
          }, 'Radio',
            (isRadio&& !isReciter)? AppStyles.Reg20Black: AppStyles.Bold16White,
          (isRadio&& !isReciter)? AppColors.primaryColor: AppColors.blackContainerColor,

        )
      , myElevatedButton( (){setState(() {
          isRadio = false; isReciter = true;
        });
        },
            'Reciters',
            (isReciter&& !isRadio)? AppStyles.Reg20Black: AppStyles.Bold16White,
            (isReciter&& !isRadio)? AppColors.primaryColor: AppColors.blackContainerColor

        )
      ],),
      Expanded(child: ListView.separated(
          itemBuilder: (context, index)=> MyContainer(title: 'Radio Ibrahim Al-Akdar',
          onClick: (){setState(() {
            selectedIndex = index;
          });}, volume: (selectedIndex == index)? Icon(Icons.volume_off):Icon(Icons.volume_up),
              image: (selectedIndex == index)? AppAssets.played_radio: AppAssets.bg_radio),
          separatorBuilder: (context, index)=> SizedBox(height: 20),
          itemCount: 20))
    ],);
  }
  Widget myElevatedButton(VoidCallback onClick, String title, TextStyle myStyle, Color bg){
    return Expanded(child: ElevatedButton(
        onPressed: onClick,
      style: ElevatedButton.styleFrom( padding: EdgeInsetsGeometry.symmetric(vertical: 8,horizontal: 16),
          backgroundColor: bg,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      child: Text(title, style: myStyle),
    ));
  }

}