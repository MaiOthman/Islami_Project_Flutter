import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:islami_project/ui/Screens/home/taps/hadeth/item_hadeth.dart';

class HadethTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CarouselSlider(
      options: CarouselOptions(height: height*0.66, enlargeCenterPage: true,
      ),
      items: List.generate(50, (index)=>index+1).map((index) {
        return ItemHadeth(index: index);
      }).toList(),
    );
  }


}