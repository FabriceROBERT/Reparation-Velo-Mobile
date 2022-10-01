import 'package:first/bg.dart';
import 'package:first/first.dart';
import 'package:first/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:first/Second.dart';
import 'package:first/animation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/accepterms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Accueil(),
    );
  }
}
