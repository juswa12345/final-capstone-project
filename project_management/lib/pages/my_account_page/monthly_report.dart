import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/black_button.dart';

class MonthlyReport extends StatelessWidget {
  const MonthlyReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40.0),
        Text(
          kMonthlyReport,
          style: headerText,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const SizedBox(width: 5.0),
            const Icon(
              MyFlutterApp.calendar,
              size: 40,
            ),
            const SizedBox(width: 30.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  'April 2022',
                  style: mainStyle,
                ),
                const SizedBox(height: 10.0),
                const BlackButton(
                  title: kSendMonthlyReport,
                  icon: MyFlutterApp.paper_plane_white,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
