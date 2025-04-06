import 'package:aihc/signupscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3B5D5), // Light purple background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Image.network(
                        'https://s3-alpha-sig.figma.com/img/62f7/9340/0115af978929e472ad11d767dbff6c2d?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NG5HlTbYGThsx-huRTZvCS738gLSstwB6hQxckZu69nUsl~Ca3jh~MWfNHmajVxUrUnH5sxFkpPpTay025TNtX6ghua2rmr3cePHhdmPiiJJiktANaOr-En0hcyhikags64cYYprnxF-UF7ohNxmLAlvcKscihH7pp2H5ePWUXTUPqujYMY-dm0ZnsxoeCG~-9Skp1KYfJECvEkIV7XyUwBXTPLdRCRB0YPrvgiHTufDncMvfCpLzTVxWSEDHjW7soP2o46S7a2qYkz180YZQ-1anQE0XSOHDN-Rpq-stmoQ2Tz2IiXd7Jr7Eyleg~U4tIRWFAGDbQcG~s9XQ2d3dw__',
                        height: 80,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Log In Your Account',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Email TextField
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      // Password TextField
                      TextField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Login Button
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
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text('Or'),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      SizedBox(height: 15),
                      // Social Media Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            'https://s3-alpha-sig.figma.com/img/6657/bb85/df4e830507649e2a4a9a90033f0fa8fb?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=p-VaY4y1jrlba0O2YifY~JW2EblPI3ttRO3lmXSx1bMb4zmbzBa6wb9Z--8p2zZgTj6kn2MVy6H7ycJLS-TUInxZu7J3FmEbGfFXyo~f~44YBxdQX2x6NzSem4-gzSTH0PQ1KNwCbyxP9f14b0zPOciM9jk0EJWWRaFW4E7YYAEvUP0veAxiC9txXdkCLp9V7Mp43BUlaTitwvJCDaWDfi0hInko1jPmWrkBeiAKQN~R2jSFt7y2RkRjGJaa-A~9pic9Hidh-1EPPAUcYBuUTn1Ub~WuVfBVD0htUHrMdOHZ5HQJBaZyQ-Xz6JPlEfBmeDttaNhP3UTsB0wJrlxqBg__',
                            height: 40,
                          ),
                          Image.network(
                            'https://s3-alpha-sig.figma.com/img/929f/bf36/619594eb456783b6e5c568206aabeb5f?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Jlw1Kr0~JWBmzUv6UjqtHI2AX4Le3q9lYbiI-ThX~iep5vyQqgy4d1CUDjgy9S~6g~zxNT03QT-BtBdtEwwSNwaLDAb7vcvp~j6Z-rhDKnel9TPcV4w9X1zvf1hZ7zh3pF~omLhAnqVTc-XpT4UCCX4kqxH-050qPtqqsl6LHX7k26gMngu7AaMPSUzw~Mi4bwxTzu3ohi1eTTJcU61Bno7lkDbtfxrNhC2baHvwVPhTdUb3BawYWNLzOaXUb8gQw~6dNMOftIYcUjzYc-M2OunNEPv5C2ogGZZHRIP4Pf28n8BvacQWs9XptfTFLOZQsKLdl6UL-JHj0V4VjAjI7A__',
                            height: 40,
                          ),
                          Image.network(
                            'https://s3-alpha-sig.figma.com/img/b355/1629/cc643ac46ee23340047d4a547dd00e73?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=kJ-oK4wJyc51NxDmJ1WKt7MWk1zVA05DWvNP8m9IrxkztLdA~C1cdU9fhYZhkKoNmgMBz4vjd-bwXpKT~KlKwPQly05m8-JOXb8twyc1tzr-dg6k0~wqKtUQB4QZ7uiAFEI7ZPNJJnbHyfjz9khLHZltKEgXrkATQ8d-rCC1J9FXhRZYwqewbays0P3tlgK3rAZfHGwDYKpFyftEiwwZtC~6IcQW6AaHktLkRhATQBmAW4qwtYSZylX5fZSTTbmc2083i-Sm9eJp8n-grCd21dbHLCOVFo4GLdEdn2NAHzjMNizPXi6gGfbGHD6hZz~9Ax46pKC~GboIKurateKCUw__',
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Sign Up Option
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
