import 'package:flutter/material.dart';
import 'package:login_ui/components/my_text_field.dart';
import 'package:login_ui/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purewhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(height: 60),
            // Img
            Image.asset('assets/login.png'),

            SizedBox(height: 35),

            Text(
              'Login',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w900,
              ),
            ),

            SizedBox(height: 25),

            // Text fields
            Align(
              alignment: Alignment.centerLeft,
              child: MyTextField(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: MyTextField(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: MyTextField(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 5),
            // sign up button
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 130,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade800,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: purewhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
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
