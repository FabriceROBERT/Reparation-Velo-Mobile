import 'package:first/bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class Accueil extends StatefulWidget {
  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background2(),
        // const Background(),
        SizedBox(
          // alignment: Alignment.bottomLeft,

          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 500,
              child: Text(
                'Bienvenue',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'OpenSans',
                    // fontSize: 40.0,
                    fontWeight: FontWeight.w300),
              ),
              // Container(
              //   width: 360,
              //   height: 130,
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: Text(
              //       'Car or sport car',
              //       maxLines: 3,
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
      ],
    );
  }
}
