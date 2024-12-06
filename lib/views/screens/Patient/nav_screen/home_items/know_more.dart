import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class KnowMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Know More'),
        backgroundColor: Color(0xFFFF9A9E),),
      body: Background(child: Center(child: Text('Content for Know More'))),
    );
  }
}