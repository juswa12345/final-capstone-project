import 'package:flutter/material.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';

class DropDownSelection extends StatefulWidget {
  const DropDownSelection({Key? key, required this.hintText}) : super(key: key);

  @override
  State<DropDownSelection> createState() => _DropDownSelectionState();

  final String hintText;
}

class _DropDownSelectionState extends State<DropDownSelection> {
  String? currentSubValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingCustom,
      height: 55.0,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [boxShadow],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: currentSubValue,
          isExpanded: true,
          elevation: 0,
          iconSize: 14,
          hint: Text(
            widget.hintText,
            style: textStyleAllerta,
          ),
          icon: const Icon(MyFlutterApp.double_down_arrow),
          items: test.map(buildCategoryItem).toList(),
          onChanged: (value) {
            setState(() {
              currentSubValue = value!;
            });
          },
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildCategoryItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}
