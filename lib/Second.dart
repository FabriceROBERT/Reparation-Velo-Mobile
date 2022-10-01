import 'package:first/bg.dart';
import 'package:first/first.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? _rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+\.@[a-z0-9\._-]+\.[a-z]+");
  String _email = "", _password = "";
  String error = '';

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;

  final kHintTextStyle = const TextStyle(
    color: Colors.white54,
    fontFamily: 'OpenSans',
  );

  final kLabelStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
  );

  final kBoxDecorationStyle = BoxDecoration(
    color: const Color(0xFF9C27B0),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      const BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mot de Passe',
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
            onChanged: (value) => setState(() => _password = value),
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
              hintText: 'Entrez votre Mot de Passe',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: kLabelStyle,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            decoration: kBoxDecorationStyle,
            child: TextFormField(
              onChanged: (value) => setState(() => _email = value),
              validator: (value) =>
                  value!.isEmpty || !emailRegex.hasMatch(value)
                      ? "Merci d'entrer votre adresse email"
                      : null,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 12.0),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Entrez votre Email',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSDM() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.purple,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Se souvenir de moi',
            style: kLabelStyle,
          )
        ],
      ),
    );
  }

  Widget _buildMDPO() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot'),
        child: Text('Mot de Passe oublié?', style: kLabelStyle),
      ),
    );
  }

  Widget _buildConnexion() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: emailRegex.hasMatch(_email)
              ? null
              : () {
                  if (_formKey.currentState!.validate()) {
                    print(_email);
                  }
                },
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
      ),
    );
  }

  Widget _buildSI() {
    return Column(
      children: <Widget>[
        const Text(
          '- OU -',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildInscriptionBtn() {
    return GestureDetector(
      onTap: () => print('Inscrption boutton'),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: "Vous n'avez pas encore de compte?",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextSpan(
              text: " S'inscrire",
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _navigateToNextScreen(context);
                },
              style: const TextStyle(
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

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Background(),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Se Connecter',
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  _buildEmail(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  _buildPassword(),
                  _buildMDPO(),
                  _buildSDM(),
                  _buildConnexion(),
                  _buildSI(),
                  const SizedBox(height: 30.0),
                  _buildInscriptionBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// 0xFF1976D2