import 'package:flutter/material.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/widgets/login_page_widget.dart';
import 'package:project_management/widgets/login_title_page.dart';

class LoginPageTablet extends StatefulWidget {
  const LoginPageTablet({Key? key}) : super(key: key);

  @override
  State<LoginPageTablet> createState() => _LoginPageTabletState();
}

class _LoginPageTabletState extends State<LoginPageTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarLogin(),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //FrontTitle
                    LoginTitlePage(),
                    //Login
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const LoginPageWidget(),
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
            ],
          ),
        ),
      ),
    );
  }
}
