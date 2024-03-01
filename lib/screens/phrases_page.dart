import 'package:flutter/material.dart';
import 'package:toku/components/item_list.dart';
import 'package:toku/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List phrases = const [
    Phrase(
      title: "Kimasu ka?",
      subtitle: "are you coming?",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    Phrase(
      title: "Kōdoku suru koto o wasurenaide kudasai.",
      subtitle: "don't forget to subscribe.",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Phrase(
      title: "Go kibun wa ikagadesu ka?",
      subtitle: "how are you feeling?",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Phrase(
      title: "Watashi wa anime ga daisukidesu.",
      subtitle: "i love anime.",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    Phrase(
      title: "Anata no namae wa nanidesu ka?",
      subtitle: "what is your name?",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    Phrase(
      title: "Doko ni iku no?",
      subtitle: "where are you going?",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    Phrase(
      title: "Hai, kimasu.",
      subtitle: "yes im coming.",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
    Phrase(
      title: "Watashi wa puroguramingu ga daisukidesu.",
      subtitle: "i love programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    Phrase(
      title: "Puroguramingu wa kantandesu.",
      subtitle: "programming is easy.",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF4A322B),
        title: const Text(
          "Phrases",
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
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ItemList(
            item: phrases[index],
            backcolor: const Color(0xFF52AFD6),
          );
        },
      ),
    );
  }
}
