import 'package:startup_hub/Screens/patent.dart';

import '../Widgets/constants.dart';
import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

import '../Widgets/roundButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String id = 'home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: false,
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(hintText: 'Search'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('list of patents'),
          ),
          RoundButton(
              color: Colors.lightBlueAccent,
              title: 'create patent',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => patent())));
              }),
        ],
      ),
      bottomNavigationBar: bar(),
    );
  }
}
