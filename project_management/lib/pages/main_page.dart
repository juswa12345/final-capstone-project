import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_management/pages/home_page_connector.dart';
import 'package:project_management/pages/layout_builder.dart';
import 'package:project_management/pages/login_page.dart';
import 'package:project_management/pages/login_page_tablet.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return const HomePageConnector();
          } else {
            return const CustomLayoutBuilder(
              mobileMode: LoginPage(),
              tabletMode: LoginPageTablet(),
            );
          }
        },
      ),
    );
  }
}
