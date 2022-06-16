import 'package:first/bg.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

void main() => runApp(const AnimationHome());

class AnimationHome extends StatefulWidget {
  const AnimationHome({Key? key}) : super(key: key);

  @override
  State<AnimationHome> createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Container(
              width: 90,
              height: 8,
              decoration: ShapeDecoration(
                  shape: StadiumBorder(), color: Colors.black26),
            ),
          )
        ],
      ),
    );
  }
}
