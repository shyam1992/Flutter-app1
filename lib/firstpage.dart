import 'package:flutter/material.dart';
import './backbutton.dart';
import './pageTitle.dart';
import './tile.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Backbutton(),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    PageTitle(),
                    SizedBox(
                      height: 30.0,
                    ),
                    Tile('Find a flight to Tokyo'),
                    SizedBox(
                      height: 30.0,
                    ),
                    Tile('Find a Staycation at Tokyo'),
                    SizedBox(
                      height: 30.0,
                    ),
                    Tile('Find spots at Tokyo'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
