import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  const Subjects({super.key, required this.subjectName});

  final String subjectName;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: Theme.of(context).primaryColorLight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          children: [
            // TODO remember this exists, dumbass
            Expanded(
              child: Text(
                subjectName,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "00:00:00",
              overflow: TextOverflow.fade,
            ),
            MenuItemButton(
              leadingIcon: Icon(Icons.play_arrow),
              // Literally the steps the aztecs used to climb their pyramids
            ),
          ],
        ),
      ),
    );
  }
}
