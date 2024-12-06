

import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class HowToDealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How to Deal'),
        backgroundColor: Color(0xFFFF9A9E),),
      body: Background(child: Center(child: Text('Content for How to Deal'))),
    );
  }
}