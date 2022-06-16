import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(imgUrl),
            ),
            const SizedBox(height: 53.0),
          ],
        ),
        const SizedBox(width: 15.0),
        Expanded(
          child: Container(
            color: grey,
            height: 103,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: kComment,
                hintStyle: textStyleMulish2,
                contentPadding: paddingAllSmall,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
