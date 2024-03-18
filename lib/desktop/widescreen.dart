import 'package:flutter/material.dart';

class Widescreen extends StatelessWidget {
  const Widescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Leaderboard(),
        Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: const Card(
                child: Text("snth"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text("snth"),
            ),
          ],
        )
      ],
    );
  }
}

class Leaderboard extends StatelessWidget {
  const Leaderboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      alignment: Alignment.topLeft,
      child: Card(
        margin: const EdgeInsets.all(8),
        child: SizedBox(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
            ),
            itemBuilder: (context, index) => Container(
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Text("Gay!"),
                    width: 500,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: 100,
                    child: Text(
                      "aoeuaoeu",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
