// ignore_for_file: deprecated_member_use
import 'package:email_validator/email_validator.dart';
import 'package:first/accepterms.dart';
import 'package:first/first.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:first/Second.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF9C27B0),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFEA80FC),
            Color(0xFFe040fB),
            Color(0xFF9C27B0),
            Color(0xFF6A1B9A),
          ],
          stops: [0.1, 0.4, 0.7, 0.9],
        ),
      ),
    );
  }
}

class FormName extends StatefulWidget {
  const FormName({Key? key}) : super(key: key);

  @override
  State<FormName> createState() => _FormNameState();
}

class _FormNameState extends State<FormName> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nom :',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Entrez votre Nom',
              contentPadding: EdgeInsets.all(12.0),
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class FormFN extends StatefulWidget {
  const FormFN({Key? key}) : super(key: key);

  @override
  State<FormFN> createState() => _FormFNState();
}

class _FormFNState extends State<FormFN> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Prenom :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.name,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Entrez votre Prenom',
              contentPadding: const EdgeInsets.all(12.0),
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class buildEmail extends StatelessWidget {
  const buildEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Entrez votre Email',
              contentPadding: EdgeInsets.only(top: 12.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class buildCEmail extends StatefulWidget {
  const buildCEmail({Key? key}) : super(key: key);

  @override
  State<buildCEmail> createState() => _buildCEmailState();
}

class _buildCEmailState extends State<buildCEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirmez votre Email :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Confirmez votre Email',
              contentPadding: EdgeInsets.only(top: 12.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class buildMDP extends StatelessWidget {
  const buildMDP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nouveau Mot de Passe :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 12.0),
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Nouveau Mot de Passe',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class buildCMDP extends StatelessWidget {
  const buildCMDP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirmez votre Mot de Passe :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 12.0),
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Confirmez votre Mot de Passe',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class Adresse extends StatelessWidget {
  const Adresse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Adresse :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.streetAddress,
            style: const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 12.0),
              prefixIcon: const Icon(
                Icons.house,
                color: Colors.white,
              ),
              hintText: 'Adresse',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class ZipCode extends StatelessWidget {
  const ZipCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Code Postale :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 12.0),
              prefixIcon: const Icon(
                Icons.house,
                color: Colors.white,
              ),
              hintText: 'Code Postale',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Ville :',
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.streetAddress,
            style: const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 12.0),
              prefixIcon: const Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
              hintText: 'Entrez votre Ville',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class Accepterms extends StatefulWidget {
  const Accepterms({Key? key}) : super(key: key);

  @override
  State<Accepterms> createState() => _AcceptermsState();
}

class _AcceptermsState extends State<Accepterms> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: agree,
              checkColor: Colors.purple,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  agree = value ?? false;
                });
              },
            ),
          ),
          Flexible(
            child: GestureDetector(
              child: InkWell(
                child: const Text(
                  "J'accepte les termes et les conditions",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans'),
                ),
                onTap: () => {_navigateToNextScreen(context)},
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SignInScreen()));
}

class BtnS extends StatefulWidget {
  const BtnS({Key? key}) : super(key: key);

  @override
  State<BtnS> createState() => _BtnSState();
}

bool agree = false;

class _BtnSState extends State<BtnS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => _navigateToNextScreen(context),
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: const Text(
          "S'Inscrire",
          style: TextStyle(
              color: Color(0xFF6A1B9A),
              letterSpacing: 4,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}

// return ElevatedButton(
//   onPressed: agree ? _doSomething : null,
//   child: const Text('Continue'),
// );

class SI extends StatelessWidget {
  const SI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- OU -',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class BtnC extends StatefulWidget {
  const BtnC({Key? key}) : super(key: key);

  @override
  State<BtnC> createState() => _BtnCState();
}

class _BtnCState extends State<BtnC> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Inscrption boutton'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Vous avez déja un compte?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextSpan(
              text: " Se connecter",
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _navigateToNextScreen2(context);
                },
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BtnConnexion extends StatefulWidget {
  const BtnConnexion({Key? key}) : super(key: key);

  @override
  State<BtnConnexion> createState() => _BtnConnexionState();
}

class _BtnConnexionState extends State<BtnConnexion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => _navigateToNextScreen2(context),
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: const Text(
          'Connexion',
          style: TextStyle(
              color: Color(0xFF6A1B9A),
              letterSpacing: 4,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}

void _navigateToNextScreen2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginScreen()));
}

class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEA80FC),
                Color(0xFFe040fB),
                Color(0xFF9C27B0),
                Color(0xFF6A1B9A),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: Animator<double>(
            tween: Tween<double>(begin: 0, end: 600),
            cycles: 1,
            duration: const Duration(seconds: 1),
            builder: (context, animatorState, child) => Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 120),
                    width: animatorState.value,
                    child: Image.asset('depannage.png'),
                  ),
                  const SizedBox(
                    // height: double.infinity,
                    width: 310.0,
                    child: BtnConnexion(),
                  ),
                  const SizedBox(
                    // height: double.infinity,
                    width: 310.0,
                    child: BtnS(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
