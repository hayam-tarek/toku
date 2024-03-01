import 'package:flutter/material.dart';
import 'package:toku/components/item_list.dart';
import 'package:toku/models/number.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List numbers = const [
    Number(
      title: "ichi 一",
      subtitle: "one",
      image: "assets/images/numbers/number_one.png",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    Number(
      title: "ni ニ",
      subtitle: "two",
      image: "assets/images/numbers/number_two.png",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Number(
      title: "san 三",
      subtitle: "three",
      image: "assets/images/numbers/number_three.png",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Number(
      title: "shi 四",
      subtitle: "four",
      image: "assets/images/numbers/number_four.png",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Number(
      title: "go 五",
      subtitle: "five",
      image: "assets/images/numbers/number_five.png",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Number(
        image: "assets/images/numbers/number_six.png",
        title: "roku 六",
        subtitle: "six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        title: "sebun 七",
        subtitle: "seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        title: "hachi 八",
        subtitle: "eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_nine.png",
        title: "kyuu 九",
        subtitle: "nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        title: "juu 十",
        subtitle: "ten",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  // List data = Number.data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF4A322B),
        title: const Text(
          "Numbers",
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
        // itemCount: data.length,
        // itemBuilder: (context, index) {
        //   return ItemList(
        //     title: data[index]["title"],
        //     subtitle: data[index]["subtitle"],
        //     imagePath: data[index]["image"],
        //     soundPath: data[index]["sound"],
        //   );
        // },
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemList(
            item: numbers[index],
            backcolor: const Color(0xFFFF9F3C),
          );
        },
      ),
    );
  }
}
