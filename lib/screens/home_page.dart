import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4DA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A322B),
        title: const Text(
          "Toku App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const NumbersPage();
              },
            ));
          },
          text: "Numbers",
          backgroundColor: const Color(0xFFFF9F3C),
        ),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const FamilyPage();
              },
            ));
          },
          text: "Family Members",
          backgroundColor: const Color(0xFF5E8A3F),
        ),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ColorsPage();
              },
            ));
          },
          text: "Colors",
          backgroundColor: const Color(0xFF864CAF),
        ),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const PhrasesPage();
              },
            ));
          },
          text: "Phrases",
          backgroundColor: const Color(0xFF52AFD6),
        ),
      ]),
    );
  }
}
