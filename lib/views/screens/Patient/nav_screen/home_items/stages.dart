import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class StagesPage extends StatelessWidget {
  final List<String> Images = [
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
  ];

  final List<String> stages = [
    'Stage 1',
    'Stage 2',
    'Stage 3',
    'Stage 4',
    'Stage 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stages'),
        backgroundColor: Color(0xFFFF9A9E),
      ),
      body: Background(
        child: Column(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0, // Horizontal spacing
                runSpacing: 40.0, // Vertical spacing
                children: List.generate(Images.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.4,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(Images[index]),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          stages[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
