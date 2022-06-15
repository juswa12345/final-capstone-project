import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/bottom_sheet_model.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey,
      child: Padding(
        padding: paddingAllSmall,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return BottomModalSheet(imgUrl: widget.imgUrl);
              },
              barrierColor: Colors.transparent,
            );
          },
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextFormatter: (date, locale) => DateFormat.y(locale).format(date),
              titleTextStyle: textStyleAllerta3,
            ),
          ),
        ),
      ),
    );
  }
}
