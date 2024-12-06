import 'package:flutter/material.dart';
import 'package:medi_app/views/screens/Patient/login.dart';
import 'package:medi_app/widgets/background.dart';


class NewLogin extends StatefulWidget {
  @override
  State<NewLogin> createState() => _NewLogin();
}

class _NewLogin extends State<NewLogin> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for all the text fields
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var ageController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  String selectedGender = 'Male'; // Default gender

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
            Navigator.pop(context);
          },
        ),
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: SingleChildScrollView(  // This allows scrolling
            child: Form(
              key: _formKey,
              child: Container(
                width: screenWidth * 0.8,  // Adjusted width for better fit
                margin: EdgeInsets.symmetric(vertical: 20), // Added margin
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
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: screenHeight * 0.04),

                    // Name
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Mobile Number
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: mobileController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Enter your mobile number',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Email
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Gender
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: DropdownButtonFormField<String>(
                        value: selectedGender,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        items: ['Male', 'Female', 'Other']
                            .map((gender) => DropdownMenuItem(
                          value: gender,
                          child: Text(gender),
                        ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select your gender';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Age
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter your age',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your age';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Password
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Confirm Password
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: TextFormField(
                        controller: confirmPasswordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Confirm your password',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),

                    // Submit Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle successful submission (e.g., navigate to next page)
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => PLogin()),
                            );
                            // For now, print the data
                            print('Form is valid');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(screenWidth * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        child: Text('Sign Up', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
