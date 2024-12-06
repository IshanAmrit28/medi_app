import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';
import 'home_items/how_deal.dart';
import 'home_items/know_more.dart';
import 'home_items/risk_factor.dart';
import 'home_items/self_examin.dart';
import 'home_items/stages.dart';
import 'home_items/symptom.dart';



class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  // List of images for the tools
  final List<String> toolImages = [
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
    'assets/images/cancer.webp',
  ];

  // List of names for the tools
  final List<String> toolNames = [
    'How to Deal',
    'Self Examin',
    'Signs',
    'Stages',
    'Know More',
    'Risk Factors',
  ];

  // List of pages corresponding to each tool
  final List<Widget> toolPages = [
    HowToDealPage(),
    SelfExaminPage(),
    SignsPage(),
    StagesPage(),
    KnowMorePage(),
    RiskFactorsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Image Section
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,

                  child: Image.asset(
                    'assets/images/bcancer.png',
                  ),
                ),

                // White Background Section
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [

                      SizedBox(height:25 ,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(toolImages.length, (index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => toolPages[index],
                                  ),
                                );
                              },
                              child: Container(
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
                                    Image.asset(
                                      toolImages[index],
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      toolNames[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
