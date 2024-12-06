import 'package:flutter/material.dart';
import 'package:medi_app/widgets/background.dart';

class MoreScreen extends StatefulWidget {
  @override
  State<MoreScreen> createState() => _MoreScreen();
}

class _MoreScreen extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Background(
          child:SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align the Row contents to the left
                      children: [
                        Icon(
                          IconData(0xe043, fontFamily: 'MaterialIcons'),
                          size: 70,
                        ), // Add the icon
                        SizedBox(width: 10), // Space between icon and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ), // Add text styling
                            ),
                            Text(
                              'Review or Change your profile',
                              style: TextStyle(fontSize: 16, color: Colors.black), // Add text styling
                            ),
                          ],
                        ),
                      ],
                    )
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),
                 // Spacing between items
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7E9E9),
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
