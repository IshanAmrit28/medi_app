import 'package:flutter/material.dart';
import 'package:medi_app/views/screens/Patient/main_screen.dart';
import 'package:medi_app/views/screens/Patient/new_user.dart';
import 'package:medi_app/widgets/background.dart';

import '../../../main.dart';



class PLogin extends StatefulWidget {
  @override
  State<PLogin> createState() => _PLogin();
}

class _PLogin extends State<PLogin> {
  var userInput = TextEditingController();
  var passText = TextEditingController();
  bool _obscureText = true; // To control visibility of the password

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        title: Text('Patient Login'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Back arrow icon
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => ProfileSelectionScreen()));
          },
        ),
      ),
      body: Background(
        child: Center(
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.02,),
                Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),

                SizedBox(height: screenHeight*0.04,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: TextField(
                    controller: userInput,
                    decoration: InputDecoration(
                      hintText: 'Email/Phone',
                      filled: true,
                      fillColor: Colors.white, // White background
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: TextField(
                    controller: passText,
                    obscureText: _obscureText,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white, // White background
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Padding inside the field
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0), // Rounded corners
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText; // Toggle password visibility
                          });
                        },
                      ),
                    ),
                  ),
                ),

                // Account creation prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewLogin()),
                        );
                      },
                      child: const Text('Create Account'),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight*0.05,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.7, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
