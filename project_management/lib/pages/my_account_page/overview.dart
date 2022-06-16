import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/black_button.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$kOverview ${DateTime.now().year}',
              style: headerText,
            ),
            const Icon(
              MyFlutterApp.tree,
              size: 42,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kAnnualLeave,
              style: mainStyle2,
            ),
            const Spacer(),
            Text(
              '25',
              style: mainStyle,
            ),
            const SizedBox(width: 15.0),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kRemainingVacationEPOS,
              style: mainStyle2,
            ),
            const Spacer(),
            Text(
              '10',
              style: mainStyle,
            ),
            const SizedBox(width: 15.0),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kRequested,
              style: mainStyle2,
            ),
            const Spacer(),
            Text(
              '08',
              style: mainStyle,
            ),
            const SizedBox(width: 15.0),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kCarryOverFromPreviousYear,
              style: mainStyle2,
            ),
            const Spacer(),
            Text(
              '01',
              style: mainStyle,
            ),
            const SizedBox(width: 15.0),
          ],
        ),
        Text(
          '($kDateOfExpiry 31 03 2023)',
          style: subStyle,
        ),
        const SizedBox(height: 15.0),
        Row(
          children: const [
            BlackButton(
              title: kApplyForLeave,
              icon: MyFlutterApp.add_black,
            ),
          ],
        ),
      ],
    );
  }
}
