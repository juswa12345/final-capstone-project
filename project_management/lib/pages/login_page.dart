import 'package:flutter/material.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/widgets/login_page_widget.dart';
import 'package:project_management/widgets/login_title_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarLogin(),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //FrontTitle
              const SizedBox(height: 80.0),
              const LoginTitlePage(),
              const SizedBox(height: 80.0),
              //Login
              const LoginPageWidget(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kImprint,
                    style: textStyleMulish,
                  ),
                  Text(
                    kPrivacy,
                    style: textStyleMulish,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
