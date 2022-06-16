import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BusinessCardTablet extends StatelessWidget {
  const BusinessCardTablet({
    Key? key,
    required this.address,
    required this.contact,
    required this.qrData,
    required this.header,
    required this.user,
  }) : super(key: key);

  final String address;
  final String contact;
  final String qrData;
  final Widget header;
  final dynamic user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingAll,
      child: Container(
        color: white,
        padding: paddingAll,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header,
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
                Text(
                  address,
                  style: headerText,
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    const SizedBox(width: 20.0),
                    const Icon(MyFlutterApp.location, size: 40.0),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.address['subdivision'],
                          style: mainStyle,
                        ),
                        Text(user.address['street']),
                        Text(user.address['city']),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  contact,
                  style: headerText,
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    const SizedBox(width: 20.0),
                    Column(
                      children: const [
                        Icon(MyFlutterApp.user_black, size: 40.0),
                        SizedBox(height: 40.0),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'T: ${user.number[0]}',
                          style: mainStyle,
                        ),
                        Text(
                          'F: ${user.number[1]}',
                          style: mainStyle,
                        ),
                        Text(
                          'M: ${user.number[2]}',
                          style: mainStyle,
                        ),
                        Text(
                          'E: ${checkLength(user.email.toString())}',
                          style: mainStyle,
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QrImage(
                  data: qrData,
                  version: 9,
                  size: 270.0,
                ),
                Text(
                  'www.flutter-bootcamp.com',
                  style: linkStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
