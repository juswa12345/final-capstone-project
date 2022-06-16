import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    Key? key,
    required this.mobileMode,
    required this.tabletMode,
  }) : super(key: key);

  final Widget mobileMode;
  final Widget tabletMode;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < kMobileWidth) {
          return mobileMode;
        } else {
          return tabletMode;
        }
      }),
    );
  }
}
