import 'package:flutter/material.dart';

class Subjects extends StatefulWidget {
  const Subjects({super.key, required this.subjectName});

  final String subjectName;

  @override
  State<StatefulWidget> createState() {
    return _SubjectState();
  }
}

class _SubjectState extends State<Subjects> {
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
            Expanded(
              child: Text(
                widget.subjectName,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "00:00:00",
              overflow: TextOverflow.fade,
            ),
            MenuItemButton(
              leadingIcon: Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }
}
