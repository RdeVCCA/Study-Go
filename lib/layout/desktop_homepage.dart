import "package:flutter/material.dart";
import "desktop_appbar.dart";
import "desktop_leaderboard.dart";

class DesktopHomepage extends StatelessWidget {
  const DesktopHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = [
      "Kill",
      "Me",
      "Now",
      "Xiao ming",
      "Someone",
      "Name",
      "Goes",
      "Here",
      "10th place",
      "Hi",
      "surname name",
      "Idk",
      "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm",
      "B",
      "The fitnessgram pacer test is a"
    ];

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 152, 152, 152),
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.topLeft,
          width: 900,
          color: const Color(0xffffffff),
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 675,
            height: 810,
            child: Leaderboard(data: data),
          ),
        ),
      ),
      appBar: DesktopAppBar(key: key),
    );
  }
}
