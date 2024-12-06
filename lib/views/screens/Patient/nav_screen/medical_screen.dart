import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class MedicalScreen extends StatefulWidget {
  @override
  State<MedicalScreen> createState() => _MedicalScreen();
}

class _MedicalScreen extends State<MedicalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Background(
        child: Center(
          child: Text(
            'MedicalScreen',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
