import 'package:flutter/cupertino.dart';
import 'package:project_management/utilities/constant_string.dart';

class TimePickerWidget extends StatelessWidget {
  const TimePickerWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const TimePicker(),
          ],
        ),
        Container(
          height: 4.1,
          color: blue,
          width: 165,
        ),
      ],
    );
  }
}

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 145,
      child: CupertinoDatePicker(
        use24hFormat: true,
        initialDateTime: dateTime,
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (dateTime) => setState(() => this.dateTime = dateTime),
      ),
    );
  }
}
