import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // AIHC Logo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__', // You'll need to add this logo to your assets
                    height: 40,
                  ),
                ],
              ),
            ),

            // Illustration and Text Section
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Illustration
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Red background shape
                      Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.red.shade500,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      // Character illustration
                      Positioned(
                        bottom: 20,
                        child: Image.asset(
                          'https://res.cloudinary.com/dwsvteyrz/image/upload/v1742905775/Screenshot_2025-03-25_175743_rkdhxs.png', // You'll need to add this illustration
                          width: 250,
                          height: 250,
                        ),
                      ),

                      // Blood drop icon
                      Positioned(
                        top: 20,
                        right: 50,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.water_drop_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  // Text Content
                  Text(
                    'Save Lives Faster',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Connecting donors and hospitals in real-time',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            // Next Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement navigation to next screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
