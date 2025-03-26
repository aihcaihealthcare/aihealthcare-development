import 'package:flutter/material.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Controllers for text fields
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _otpController = TextEditingController();

  // Checkbox state
  bool _isChecked = false;

  // Function to handle sign-up button press
  void _handleSignUp() {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _otpController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please fill all fields")));
    } else if (!_isChecked) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please agree to the terms & conditions")),
      );
    } else {
      // TODO: Implement sign-up logic
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Sign-Up Successful")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back Button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 28),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              // Logo
              Image.network(
                'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__', // Replace with your actual image path
                height: 80,
              ),

              SizedBox(height: 20),

              // Title
              Text(
                "Sign Up Your Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              // Email Field
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Email-ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Password Field
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 15),

              // OTP Field
              TextField(
                controller: _otpController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "OTP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 10),

              // OTP Note
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Note: OTP is sent to your given Email ID",
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),

              SizedBox(height: 15),

              // Terms & Conditions
              Row(
                children: [
                  // Custom CheckBox with pink color
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Color(0xFFE30652),
                  ),
                  Expanded(
                    child: Text(
                      "I agree to the terms & conditions",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE30652), // Pink color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _handleSignUp,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
