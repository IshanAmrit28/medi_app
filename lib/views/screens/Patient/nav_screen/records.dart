import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class Records extends StatefulWidget {
  @override
  State<Records> createState() => _Records();
}

class _Records extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Background(
        child: Center(
          child: Text(
            'Records',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
