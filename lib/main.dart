import 'package:flutter/material.dart';
import 'package:medi_app/splash_screen.dart';
import 'package:medi_app/views/screens/Doctor/login.dart';
import 'package:medi_app/views/screens/Patient/login.dart';
import 'package:medi_app/widgets/background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class ProfileSelectionScreen extends StatefulWidget {
  @override
  _ProfileSelectionScreenState createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  String selectedProfile = "";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Adding padding to avoid overflow
    EdgeInsets padding = EdgeInsets.symmetric(horizontal: screenWidth * 0.05);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        title: Text("Select Profile"),
        centerTitle: true,
      ),
      body: Background(
        child: SingleChildScrollView(  // Ensure the content is scrollable
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),  // Added vertical padding to avoid overflow
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Please select your profile",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),

                  // User Profile Container
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedProfile = "User";
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PLogin()),
                      );
                    },
                    child: Container(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.2,  // Reduced height
                      margin: padding,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/user.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.15, // Adjusted image height
                            ),
                          ),
                          Text('Patient'),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.05),

                  // Doctor Profile Container
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedProfile = "Doctor";
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DLogin()),
                      );
                    },
                    child: Container(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.2,  // Reduced height
                      margin: padding,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/doctor.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.15, // Adjusted image height
                            ),
                          ),
                          Text('Doctor'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
