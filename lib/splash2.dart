import 'package:flutter/material.dart';
import 'splash3.dart';

class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  // Replace with your dynamic image URLs
  final String logoUrl =
      'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__';
  final String illustrationUrl =
      'https://res.cloudinary.com/dwsvteyrz/image/upload/v1742973946/Screenshot_2025-03-26_125358_n8q7mq.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Section
              Image.network(logoUrl, height: 60),
              SizedBox(height: 30),

              // Illustration Section
              Image.network(illustrationUrl, height: 200),
              SizedBox(height: 20),

              // Title Text
              Text(
                'Revolutionizing Blood Donation',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              // Subtitle Text
              Text(
                'AI for smarter and faster healthcare solutions.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Next Button
              SizedBox(
                width: 120,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE30652), // Pink color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NearbyCityScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
