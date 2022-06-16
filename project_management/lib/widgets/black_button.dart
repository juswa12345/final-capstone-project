import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      color: const Color(0xff000000),
      child: Center(
        child: Row(
          children: [
            Text(
              title,
              style: subStyle2,
            ),
            const SizedBox(width: 10.0),
            Icon(
              icon,
              size: 14,
              color: const Color(0xffffffff),
            ),
          ],
        ),
      ),
    );
  }
}
