import 'package:flutter/material.dart';
import 'package:myapp/components/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.ad_units,
              size: 100,
              color: Colors.blueGrey,
            ),
            Text(
              "SIGN IN",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            SizedBox(height: 20),
            MyTextfield(
              hintText: "Username",
              labelText: "Username",
              obscureText: false,
            ),
            SizedBox(height: 20),
            MyTextfield(
              hintText: "Password",
              labelText: "Password",
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
