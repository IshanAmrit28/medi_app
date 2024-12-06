import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class RiskFactorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Risk Factors'),
        backgroundColor: Color(0xFFFF9A9E),),
      body:Background(child: Center(child: Text('Content for Risk Factors'))),
    );
  }
}
