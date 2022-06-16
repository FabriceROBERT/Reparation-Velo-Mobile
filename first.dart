import 'package:first/bg.dart';
import 'package:first/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:first/Second.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const Background(),
            SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Inscription',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    FormName(),
                    SizedBox(height: 30.0),
                    FormFN(),
                    SizedBox(height: 30.0),
                    buildEmail(),
                    // SizedBox(height: 30.0),
                    // buildCEmail(),
                    SizedBox(height: 30.0),
                    buildMDP(),
                    SizedBox(height: 30.0),
                    buildCMDP(),
                    SizedBox(height: 30.0),
                    Adresse(),
                    SizedBox(height: 30.0),
                    ZipCode(),
                    SizedBox(height: 30.0),
                    Country(),
                    SizedBox(height: 30.0),
                    Accepterms(),
                    // SizedBox(height: 10.0),
                    BtnS(),
                    SizedBox(height: 20.0),
                    SI(),
                    SizedBox(height: 30.0),
                    BtnC()
                  ],
                ),
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
