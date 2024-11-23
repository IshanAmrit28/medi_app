import 'package:flutter/material.dart';
import 'package:medi_app/main.dart';
import 'package:medi_app/widgets/background.dart';

class PatientProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        title: Text('Patient profile'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => ProfileSelectionScreen()));
          },
        ),
      ),
      body: Background(
        child: Center(
          child: Text(
            'Patient Profile Page login page',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
