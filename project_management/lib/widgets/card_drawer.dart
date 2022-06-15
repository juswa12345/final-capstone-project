import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';

class CardDrawer extends StatefulWidget {
  const CardDrawer({
    Key? key,
    required this.drawerItems,
    required this.isSelected,
  }) : super(key: key);

  final Map<String, dynamic> drawerItems;
  final bool isSelected;
  @override
  State<CardDrawer> createState() => _CardDrawerState();
}

class _CardDrawerState extends State<CardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: 130,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.drawerItems['icon']!,
              color: widget.isSelected ? const Color(0xff000000) : const Color(0xFF9E9E9E),
              size: 33,
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.drawerItems['name'],
              style: TextStyle(
                color: widget.isSelected ? const Color(0xff000000) : const Color(0xFF9E9E9E),
              ),
            ),
            const SizedBox(height: 10.0),
            widget.isSelected
                ? Container(
                    height: 3.0,
                    width: 93.0,
                    color: purple,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
