import 'package:flutter/material.dart';
import 'articuler.dart';

class Articulator extends StatefulWidget {
  const Articulator({Key? key}) : super(key: key);

  @override
  _ArticulatorState createState() => _ArticulatorState();
}

class _ArticulatorState extends State<Articulator> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: articulerBar(screenSize),
      body: const Articuler(),
    );
  }
}
