import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/calendar.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';

class WeeklyReportPage extends StatefulWidget {
  const WeeklyReportPage({Key? key}) : super(key: key);

  static const routeName = '/weeklyReportPage';
  @override
  State<WeeklyReportPage> createState() => _WeeklyReportPageState();
}

class _WeeklyReportPageState extends State<WeeklyReportPage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNavigations(context, kMyAccount),
      body: Column(
        children: [
          Padding(
            padding: paddingOnly,
            child: Container(
              color: const Color(0x369E9E9E),
              child: TabBar(
                controller: _controller,
                indicatorColor: purple,
                indicatorWeight: 3.0,
                labelColor: const Color(0xff000000),
                labelStyle: textStyleAllerta,
                onTap: (value) => setState(() => current = value),
                tabs: const [
                  Tab(text: kMonth),
                  Tab(text: kYear),
                ],
              ),
            ),
          ),
          current == 0
              ? Padding(
                  padding: paddingTop,
                  child: const Calendar(),
                )
              : Container()
        ],
      ),
    );
  }
}
