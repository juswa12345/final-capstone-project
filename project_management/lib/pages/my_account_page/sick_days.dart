import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

class SickDays extends StatelessWidget {
  const SickDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(kSickDays, style: headerText),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kAll,
              style: mainStyle2,
            ),
            Text(
              '03',
              style: mainStyle,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            MaterialButton(
              onPressed: () {},
              padding: const EdgeInsets.all(12.0),
              color: const Color(0xff000000),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      kSubmitIlness,
                      style: subStyle2,
                    ),
                    const SizedBox(width: 10.0),
                    const Icon(
                      MyFlutterApp.add_black,
                      size: 14,
                      color: Color(0xffffffff),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
