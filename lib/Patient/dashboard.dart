

import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class PDashBoard extends StatefulWidget{
  @override
  State<PDashBoard> createState()=>_PDashBoard();


}

class _PDashBoard extends State<PDashBoard>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        title: Text('Dashboard'),
        centerTitle: true,

      ),

      body: Background(child:
      Column(
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      )),
    );

  }


}