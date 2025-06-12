import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void _navigateScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purewhite,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // img
                Image.asset('assets/welcome.png'),
                SizedBox(height: 20),

                // hello
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),

                // desc
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  child: Text(
                    'Welcome to Little Drop, where you manage your daily tasks',
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: 40),

                // login button & Sign up button
                GestureDetector(
                  onTap: _navigateScreen,
                  child: Container(
                    width: 230,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: purewhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  width: 230,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: purewhite,
                    border: Border.all(
                      color: Colors.deepPurple.shade800,
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.deepPurple[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 45),

                // signup with
                Text(
                  'Sign up using',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/facebook.png', height: 40),
                    SizedBox(width: 18),
                    Image.asset('assets/icons/google-plus.png', height: 40),
                    SizedBox(width: 18),
                    Image.asset('assets/icons/linkedin.png', height: 40),
                  ],
                )
              ],
            ),
            Positioned(
              left: 40,
              top: 120,
              child: Icon(
                Icons.circle_outlined,
                color: Colors.deepPurple[800],
                size: 18,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 40,
              child: Icon(
                Icons.circle,
                color: Colors.deepPurple[800],
                size: 18,
              ),
            ),
            Positioned(
              left: 78,
              top: 57,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.grey[400],
                size: 25,
              ),
            ),
            Positioned(
              right: 50,
              top: 70,
              child: Icon(
                Icons.circle_outlined,
                color: Colors.grey[400],
                size: 26,
              ),
            ),
            Positioned(
              right: 75,
              top: 130,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.deepPurple[800],
                size: 26,
              ),
            ),
            Positioned(
              right: 55,
              top: 220,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.grey[400],
                size: 18,
              ),
            ),
          ],
        ));
  }
}
