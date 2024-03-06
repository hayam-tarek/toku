import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/component_model.dart';

class ItemList extends StatelessWidget {
  final ComponentModel item;
  final Color backcolor;
  const ItemList({
    super.key,
    required this.item,
    required this.backcolor,
  });
  // @override
  // Widget build(BuildContext context) {
  //   return Card(
  //     color: Color(0xFFFF9F3C),
  //     child: ListTile(
  //       leading: Container(
  //         color: Color(0xFFFFF4DA),
  //         child: Image.asset(
  //           imagePath,
  //         ),
  //       ),
  //       title: Text(
  //         title,
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 20,
  //         ),
  //       ),
  //       subtitle: Text(
  //         subtitle,
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 15,
  //         ),
  //       ),
  //       trailing: IconButton(
  //         onPressed: onPressed,
  //         icon: Icon(
  //           Icons.play_arrow,
  //           color: Colors.white,
  //           size: 30,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: backcolor,
      child: Row(children: [
        if (item.image != null)
          Container(
            color: const Color(0xFFFFF4DA),
            child: Image.asset(item.image!),
          ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource(
                    item.sound,
                  ),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              )),
        )
      ]),
    );
  }
}
