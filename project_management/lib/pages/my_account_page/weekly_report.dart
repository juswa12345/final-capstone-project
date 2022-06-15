import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/weekly_report_page.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/black_button.dart';

class WeeklyReport extends StatelessWidget {
  const WeeklyReport({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40.0),
        Text(
          kWeeklyReport,
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
                  '12.03 - 19.03.2021',
                  style: mainStyle,
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeeklyReportPage(imgUrl: imgUrl)),
                  ),
                  child: const BlackButton(
                    title: kSendWeeklyReport,
                    icon: MyFlutterApp.paper_plane_white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
