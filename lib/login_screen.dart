import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/blog_screen.dart';
import 'package:flutter_blog_navigation/forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void navigateToScreen(
      {required BuildContext context, required Widget screen}) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "VIP ورود به حساب سیگنال",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Image(
                  image: AssetImage("images/w.png"),
                ),
                OutlinedButton(
                  onPressed: () {
                    navigateToScreen(context: context, screen: BlogScreen());
                  },
                  child: Text(
                    "ورود",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    foregroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ثبت نام",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToScreen(
                        context: context, screen: ForgetPasswordScreen());
                  },
                  child: Text(
                    "فراموشی رمز عبور",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
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
