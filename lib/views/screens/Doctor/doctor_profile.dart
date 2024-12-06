
import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';
import '../../../main.dart';


class DoctorProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        title: Text('Doctors profile'),
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
            'Doctor Profile Page',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
