import 'package:flutter/material.dart';
import 'package:app1/calendarPage.dart';

class Tile extends StatelessWidget {
  Tile(this.text) {}

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CalendarPage()))
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
                height: 70.0,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ))),
            Positioned(
              top: -20,
              child: Container(
                color: Colors.grey,
                height: 40.0,
                width: 40.0,
                child: const Icon(
                  Icons.flight,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
