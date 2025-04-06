import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'splash2.dart';

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
              child: Center(
                // Wrap the Row with Center widget
                child: Row(
                  mainAxisSize:
                      MainAxisSize
                          .min, // This ensures the Row takes minimum space
                  children: [
                    Image.network(
                      'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__',
                      width: 250,
                      height: 50,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return CircularProgressIndicator();
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Text('Failed to load logo');
                      },
                    ),
                  ],
                ),
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
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      // Character illustration
                      Positioned(
                        bottom: 20,
                        child: Image.network(
                          'https://res.cloudinary.com/dwsvteyrz/image/upload/v1742905775/Screenshot_2025-03-25_175743_rkdhxs.png',
                          width: 250,
                          height: 200,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return CircularProgressIndicator();
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Failed to load illustration');
                          },
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
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE70500), // Pink color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BloodDonationApp()),
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
    );
  }
}

// Rest of the code remains the same as in the previous implementation
void main() {
  runApp(const LogoVideoApp());
}

class LogoVideoApp extends StatelessWidget {
  const LogoVideoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogoVideoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LogoVideoScreen extends StatefulWidget {
  @override
  _LogoVideoScreenState createState() => _LogoVideoScreenState();
}

class _LogoVideoScreenState extends State<LogoVideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://s3-figma-videos-production-sig.figma.com/video/1371354768258159808/TEAM/b559/e074/-6479-4cc5-be61-62183602fae7?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=LxXlJcPIXaIOOvEZAu1Uyh1mqmjbEo3V-c94s7pvCUN8~ZaP27oS9Y17ZUaXXcq6PxzpoEvskjXU1DB~dwrI0xHV1SnDmtSfCcHc4BTfurY5P59Td9PB3P9~JYtKEqjNMhJ9rg40u24U5jlzFmLXR8Kpki2pRCrjRf-Mmcw~LJiXDmM7ZOlyY0qGQaq4RFtG9lxHxSKcfmtLPZTPhBjieT7VdnpggSxcWPpf7ITO0jooDGtD2unWOTTWZJgUpyeQ4X~qqO8QMdQzPL~vN6sZd~xHGBh16CJy76iTGQIEGUm4r3h7r0i-aFShIwUQiVr2H-LGYxGmrcFOfklqYnh1Iw__',
      )
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(false);

        // Listen for video completion
        _controller.addListener(() {
          if (_controller.value.position >= _controller.value.duration) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
            );
          }
        });

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE00047),
      body: Center(
        child:
            _controller.value.isInitialized
                ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                : CircularProgressIndicator(color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
