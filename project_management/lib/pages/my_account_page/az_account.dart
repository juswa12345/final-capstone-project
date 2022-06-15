import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class AZAccount extends StatelessWidget {
  const AZAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(kAzAccount, style: headerText),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kHours,
              style: mainStyle2,
            ),
            Text(
              '100/250',
              style: mainStyle,
            ),
          ],
        ),
      ],
    );
  }
}
