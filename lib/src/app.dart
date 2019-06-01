import 'package:flutter/material.dart';
import 'package:osg4_eudeka_tugas_uiux/src/ui/card_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
        fontFamily: 'Rubik',
      ),
      home: CardList(),
    );
  }
}
