import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class SelfExaminPage extends StatefulWidget {
  @override
  State<SelfExaminPage> createState() => _SelfExaminPageState();
}

class _SelfExaminPageState extends State<SelfExaminPage> {
  // List of steps with their titles, descriptions, and image paths
  final List<Map<String, String>> steps = [
    {
      'title': 'Examine breast and armpit with raised arm',
      'description':
      'Stand in front of a mirror with your arm raised overhead. Carefully examine your breasts and armpit for any changes, such as lumps, bumps, or swelling.',
      'image': 'assets/images/one.png',
    },
    {
      'title': 'Use fingerpads with massage oil or shower gel',
      'description':
      'Apply a small amount of massage oil or shower gel to your finger pads. This can help reduce friction and make it easier to feel any change in your breast tissue.',
      'image': 'assets/images/two.png',
    },
    {
      'title': 'Up and Down',
      'description':
      'Use your fingerpads to examine your breast in a circular motion, starting from the nipple and moving outwards. Repeat this motion several times.',
      'image': 'assets/images/one.png',
    },
    {
      'title': 'Start from the nipple and move outwards',
      'description':
      'As you examine your breast, pay attention to any lumps, bumps, or changes in texture.',
      'image': 'assets/images/four.png',
    },
    {
      'title': 'Circles',
      'description':
      'Continue examining your breast in a circular motion, covering the entire area.',
      'image': 'assets/images/five.png',
    },
    {
      'title': 'Examine breasts in the mirror for lumps or skin dimpling',
      'description':
      'While examining your breasts in the mirror, look for any changes in their shape, size, or appearance. Pay attention to any lumps, bumps, or dimpling of the skin.',
      'image': 'assets/images/six.png',
    },
    {
      'title': 'Change in skin color or texture',
      'description':
      'Check for any changes in the color or texture of your breast skin. Look for redness, scaling, or dimpling.',
      'image': 'assets/images/seven.png',
    },
    {
      'title': 'Nipple deformation, color change, or leaks of any fluid',
      'description':
      'Examine your nipples for any changes, such as deformation, color change, or the leaking of any fluid.',
      'image': 'assets/images/eight.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Examination'),
        backgroundColor: Color(0xFFFF9A9E),
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Section
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {

                  });

                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7E9E9),
                    borderRadius: BorderRadius.circular(12.0), // Circular corners
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: Text(
                    'Tap to Switch to AI',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Once a month, please follow the steps below to check for any irregularities.',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),

                itemCount: steps.length,
                itemBuilder: (context, index) {
                  final step = steps[index];
                  return _buildStepRow(
                    context,
                    title: step['title']!,
                    description: step['description']!,
                    imagePath: step['image']!,
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Each Step
  Widget _buildStepRow(BuildContext context,
      {required String title, required String description, required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 175,
            width: 175,
            margin: EdgeInsets.only(right: 16),
            child: Image.asset(imagePath),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



