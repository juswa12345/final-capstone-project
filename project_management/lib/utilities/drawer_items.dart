import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

const List<Map<String, dynamic>> drawerItem = [
  {
    'icon': MyFlutterApp.user_black,
    'name': kMyAccount,
  },
  {
    'icon': MyFlutterApp.visitenkarte,
    'name': kBusinessCard,
  },
  {
    'icon': MyFlutterApp.time,
    'name': kTimeTracking,
  },
  {
    'icon': Icons.logout_rounded,
    'name': kLogout,
  },
];
