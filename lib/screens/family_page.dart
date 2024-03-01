import 'package:flutter/material.dart';
import 'package:toku/components/item_list.dart';
import 'package:toku/models/family_member.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List familyMembers = const [
    FamilyMember(
      title: "sofu",
      subtitle: "grandfather",
      image: "assets/images/family_members/family_grandfather.png",
      sound: "sounds/family_members/grandfather.wav",
    ),
    FamilyMember(
      title: "sobo",
      subtitle: "grandmother",
      image: "assets/images/family_members/family_grandmother.png",
      sound: "sounds/family_members/grandmother.wav",
    ),
    FamilyMember(
      title: "chichioya",
      subtitle: "father",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      title: "Hahaoya",
      subtitle: "mother",
      image: "assets/images/family_members/family_mother.png",
      sound: "sounds/family_members/mother.wav",
    ),
    FamilyMember(
      title: "musuko",
      subtitle: "son",
      image: "assets/images/family_members/family_son.png",
      sound: "sounds/family_members/son.wav",
    ),
    FamilyMember(
      title: "musume",
      subtitle: "daughter",
      image: "assets/images/family_members/family_daughter.png",
      sound: "sounds/family_members/daughter.wav",
    ),
    FamilyMember(
      title: "ani",
      subtitle: "older brother",
      image: "assets/images/family_members/family_older_brother.png",
      sound: "sounds/family_members/olderbrother.wav",
    ),
    FamilyMember(
      title: "ane",
      subtitle: "older sister",
      image: "assets/images/family_members/family_older_sister.png",
      sound: "sounds/family_members/oldersister.wav",
    ),
    FamilyMember(
      title: "ototo",
      subtitle: "younger brother",
      image: "assets/images/family_members/family_younger_brother.png",
      sound: "sounds/family_members/youngerbrother.wav",
    ),
    FamilyMember(
      title: "imouto",
      subtitle: "younger sister",
      image: "assets/images/family_members/family_younger_sister.png",
      sound: "sounds/family_members/youngersister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF4A322B),
        title: const Text(
          "Family Members",
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
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ItemList(
            item: familyMembers[index],
            backcolor: const Color(0xFF5E8A3F),
          );
        },
      ),
    );
  }
}
