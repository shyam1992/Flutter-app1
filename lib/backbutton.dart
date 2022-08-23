import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  const Backbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.west,
          color: Colors.white,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Tokyo',
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        )
      ],
    );
  }
}
