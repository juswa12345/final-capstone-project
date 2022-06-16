import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          onPressed: () {},
          color: const Color(0xffFFB72B),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          child: child,
        ),
      ],
    );
  }
}
