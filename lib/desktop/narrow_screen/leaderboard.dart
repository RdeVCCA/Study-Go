import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            color: switch (index) {
              0 => const Color(0xfffce269),
              1 => const Color(0xffc1c8d1),
              2 => const Color(0xffe69b4b),
              _ => const Color(0xfff7f2f9),
            },
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
            child: Text("${index + 1}: Placeholder"),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(thickness: 1, height: 1);
        },
        itemCount: 15,
      ),
    );
  }
}
