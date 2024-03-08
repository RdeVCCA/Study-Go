import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({
    super.key,
    required this.data,
  });

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 253, 253, 253),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(8),
            color: switch (index) {
              0 => const Color.fromARGB(255, 230, 230, 0),
              1 => const Color(0xff60605f),
              2 => const Color(0xff664204),
              _ => const Color(0x00000000)
            },
            child: Text(
              "${(index + 1).toString()} : ${data[index].length > 40 ? "${data[index].substring(0, 37)}..." : data[index]}",
              style: TextStyle(
                shadows: switch (index) {
                  1 || 2 || 0 => <Shadow>[
                      const Shadow(
                          // bottomLeft
                          offset: Offset(-0.4, -0.4),
                          color: Colors.white),
                      const Shadow(
                          // bottomRight
                          offset: Offset(0.4, -0.4),
                          color: Colors.white),
                      const Shadow(
                          // topRight
                          offset: Offset(0.4, 0.4),
                          color: Colors.white),
                      const Shadow(
                          // topLeft
                          offset: Offset(-0.4, 0.4),
                          color: Colors.white),
                    ],
                  _ => const [Shadow()]
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: data.length,
      ),
    );
  }
}
