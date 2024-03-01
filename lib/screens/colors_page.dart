import 'package:flutter/material.dart';
import 'package:toku/components/item_list.dart';
import 'package:toku/models/color_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List colors = const [
    ColorItem(
      title: "Kuro",
      subtitle: "black",
      image: "assets/images/colors/color_black.png",
      sound: "sounds/colors/black.wav",
    ),
    ColorItem(
      title: "Chairo",
      subtitle: "brown",
      image: "assets/images/colors/color_brown.png",
      sound: "sounds/colors/brown.wav",
    ),
    ColorItem(
      title: "Hokori ppoi kiiro",
      subtitle: "dusty yellow",
      image: "assets/images/colors/color_dusty_yellow.png",
      sound: "sounds/colors/dusty_yellow.wav",
    ),
    ColorItem(
      title: "Gurē",
      subtitle: "gray",
      image: "assets/images/colors/color_gray.png",
      sound: "sounds/colors/gray.wav",
    ),
    ColorItem(
      title: "Midori",
      subtitle: "green",
      image: "assets/images/colors/color_green.png",
      sound: "sounds/colors/green.wav",
    ),
    ColorItem(
      title: "Aka",
      subtitle: "red",
      image: "assets/images/colors/color_red.png",
      sound: "sounds/colors/red.wav",
    ),
    ColorItem(
      title: "Shiro",
      subtitle: "white",
      image: "assets/images/colors/color_white.png",
      sound: "sounds/colors/white.wav",
    ),
    ColorItem(
      title: "Kiiro",
      subtitle: "yellow",
      image: "assets/images/colors/color_yellow.png",
      sound: "sounds/colors/yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF4A322B),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            color: const Color(0xFF4A322B),
            width: double.infinity,
            height: 1,
          );
        },
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemList(
            item: colors[index],
            backcolor: const Color(0xFF864CAF),
          );
        },
      ),
    );
  }
}
