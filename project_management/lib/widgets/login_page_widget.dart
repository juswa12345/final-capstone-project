import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  Future _login(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () => _login('user@gmail.com', 'password123'),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              boxShadow: [boxShadow],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(kMicrosoftImage),
                  const SizedBox(width: 12),
                  const Text(kSigninText),
                  const Spacer(),
                  const Icon(
                    MyFlutterApp.double_arrow,
                    size: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
