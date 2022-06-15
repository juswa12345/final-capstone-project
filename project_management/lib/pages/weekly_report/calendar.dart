import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/bottom_sheet_model.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

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
                return const BottomModalSheet();
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
