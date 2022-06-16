import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

class LoginTitlePage extends StatelessWidget {
  const LoginTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          MyFlutterApp.flutter_logo,
          color: Color(0xff8465FF),
          size: 75,
        ),
        const SizedBox(height: 50.0),
        Text(
          kTitlePage,
          style: mainStyle,
        ),
      ],
    );
  }
}
