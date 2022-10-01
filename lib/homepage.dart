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
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 164, 28),
        appBar: AppBar(
          title: Column(children: [
            Row(children: [
              Text(
                'Bonjour',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
              const Spacer(),
              Icon(Icons.person),
              Icon(Icons.menu),
            ]),

            // TextFormField(),
          ]),
          backgroundColor: Color.fromARGB(255, 255, 164, 28),
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(200, 200, 0, 10),
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 242, 212, 168).withOpacity(0.5),
          ),
          child: Row(
            children: [
              Flexible(
                child: new Text(
                  "Je m'appelle Fabrice, Comment ca va?",
                  style: new TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
 



// bottom: PreferredSize(
        //     child: Icon(Icons.search),

        //     // child: Text('icon',
        //     //     style: TextStyle(color: Colors.white, fontSize: 40)),
        //     preferredSize: Size.zero),
        // backgroundColor: const Color.fromARGB(255, 255, 155, 0),
        // toolbarHeight: 120,
        // // bottomOpacity: 0.0,
        // elevation: 0.0,
        