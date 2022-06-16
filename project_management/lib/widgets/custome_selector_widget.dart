import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

class CustomSelectorWidget extends StatelessWidget {
  const CustomSelectorWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.route,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color color;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textStyleAllerta4,
            ),
            Text(
              subTitle,
              style: textStyleAllertaSmall,
            )
          ],
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route,
            ),
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: const Icon(
              MyFlutterApp.add_black,
              color: white,
              size: 18.0,
            ),
          ),
        )
      ],
    );
  }
}
