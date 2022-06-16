import 'package:flutter/material.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/rectangle_clipper.dart';

class SuperiorTile extends StatelessWidget {
  const SuperiorTile({
    Key? key,
    required this.supData,
  }) : super(key: key);

  final SuperiorData supData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40.0),
        Text(
          '$kSuperior(r)',
          style: headerText,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(supData.imgUrl),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  '${supData.firstname} ${supData.lastname}',
                  style: mainStyle,
                ),
                Text(
                  supData.email,
                  style: subStyle,
                ),
                const SizedBox(height: 10.0),
                Trapezoid(
                  child: Center(
                    child: Text(
                      supData.number[0],
                      style: subStyle2,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
