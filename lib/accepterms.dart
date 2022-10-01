import 'package:first/bg.dart';
import 'package:first/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:first/Second.dart';
import 'package:flutter/material.dart';

class BigText extends StatefulWidget {
  const BigText({Key? key}) : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
               Background(),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 80.0,
                      ),
                      Text(
                        'TERMES ET CONDITIONS DE CONFIDENTIALITES',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text('ok')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
