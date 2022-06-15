import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class MyAccountWidget extends StatelessWidget {
  const MyAccountWidget({
    Key? key,
    required this.header,
    required this.title,
    required this.user,
  }) : super(key: key);

  final String header;
  final String title;
  final dynamic user;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Text(
          header,
          style: headerText,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(user.imgUrl),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  '${user.firstname} ${user.lastname}',
                  style: mainStyle,
                ),
                Text(
                  user.email,
                  style: subStyle,
                ),
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: subStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
