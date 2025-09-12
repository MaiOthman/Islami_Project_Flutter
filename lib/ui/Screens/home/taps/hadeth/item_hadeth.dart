import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_routes.dart';
import 'package:islami_project/utilis/app_styles.dart';

import '../../../../../model/hadeth.dart';

class ItemHadeth extends StatefulWidget{
  int index;

  ItemHadeth({required this.index});

  @override
  State<ItemHadeth> createState() => _ItemHadethState();
}

class _ItemHadethState extends State<ItemHadeth> {
  Hadeth? hadethItem;

  @override
  void initState(){
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        alignment: Alignment.center,

        padding: EdgeInsetsGeometry.only(top: height*0.005,right: width*0.01,left: width*0.01),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
          color: AppColors.primaryColor,
      image: DecorationImage(image: AssetImage(AppAssets.hadeth_details))
      ),
        child:
        hadethItem == null? Center(child: CircularProgressIndicator(color: AppColors.blackColor,)): Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset(AppAssets.left_corner, width: width*0.16,height: height*0.1,),
            Expanded(child: Text(hadethItem!.title, textAlign: TextAlign.center, style: AppStyles.Bold24Black)),
            Image.asset(AppAssets.right_corner, width: width*0.16,height: height*0.1)
          ],),
                Expanded(child: SingleChildScrollView(child: Text(hadethItem!.body, textAlign: TextAlign.center,style: AppStyles.Bold16Black,))),
                Image.asset(AppAssets.bottom)
              ],
            ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(AppRoutes.hadethDetails,arguments: hadethItem);
      },
    );
  }

  void loadHadethFile() async{
    String hadeth = await rootBundle.loadString('assets/files/hadeth/h${widget.index}.txt');
    String content = '';
    List<String> hadethLines = hadeth.split('\n');
    String title = hadethLines[0];
    for(int i = 1; i < hadethLines.length; i++){
      content = content+hadethLines[i];
    }
    // String title = hadeth.substring(0, hadeth.indexOf('\n'));
    // String content = hadeth.substring(hadeth.indexOf('\n')+1);
     hadethItem = Hadeth( title: title, body: content);
    await Future.delayed(Duration(seconds: 1));
     setState(() {

     });
  }
}