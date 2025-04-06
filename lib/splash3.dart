import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'signupscreen.dart';

class NearbyCityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.network(
                'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__',
                height: 80,
              ),

              SizedBox(height: 20),

              // Illustration
              Image.network(
                'https://res.cloudinary.com/dwsvteyrz/image/upload/v1742975149/Screenshot_2025-03-26_131131_gioexb.png',
                height: 200,
              ),

              SizedBox(height: 20),

              // Title
              Text(
                'Welcome AIHC\nNearby City',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              // Subtitle
              Text(
                'Every drop counts in saving a life.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),

              SizedBox(height: 30),

              // Log in Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE30652),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFFE30652)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFE30652),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Footer Text
              Text(
                'Create account or login as Blood Bank?',
                style: TextStyle(color: Colors.grey[600]),
              ),

              TextButton(
                onPressed: () {
                  //jk
                },
                child: Text(
                  'Click here',
                  style: TextStyle(
                    color: Color(0xFFE30652),
                    fontWeight: FontWeight.bold,
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
