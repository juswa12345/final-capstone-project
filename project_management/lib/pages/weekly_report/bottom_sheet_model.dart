import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/comment_tile.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/button_widget.dart';
import 'package:project_management/widgets/drop_down.dart';

class BottomModalSheet extends StatelessWidget {
  const BottomModalSheet({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Padding(
        padding: paddingAllBig,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kPeriod,
                    style: textStyleAllerta4,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      MyFlutterApp.close,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '24.04.21 - 05.05.21',
                    style: textStyleAllerta,
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kDaysTotal,
                    style: textStyleAllerta,
                  ),
                  Text(
                    '7',
                    style: textStyleAllerta,
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kCurrentHolidayBudget,
                    style: textStyleAllerta,
                  ),
                  Text(
                    '30',
                    style: textStyleAllerta,
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kVacationDaysRequested,
                    style: textStyleAllerta,
                  ),
                  Text(
                    '8',
                    style: textStyleAllerta,
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              const CommentTile(),
              Padding(
                padding: paddingTop,
                child: const DropDownSelection(hintText: kVacation),
              ),
              Padding(
                padding: paddingTop,
                child: const DropDownSelection(hintText: kStated),
              ),
              Padding(
                padding: paddingTop,
                child: const DropDownSelection(hintText: kRepresentedBy),
              ),
              const SizedBox(height: 30.0),
              ButtonWidget(
                child: Row(
                  children: [
                    Text(
                      kSend,
                      style: buttonText,
                    ),
                    const SizedBox(width: 10.0),
                    const Icon(
                      MyFlutterApp.paper_plane_white,
                      size: 14.0,
                      color: white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
