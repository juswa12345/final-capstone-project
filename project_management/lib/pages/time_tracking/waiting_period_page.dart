import 'package:flutter/material.dart';
import 'package:project_management/pages/weekly_report/comment_tile.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/black_button.dart';
import 'package:project_management/widgets/drop_down.dart';
import 'package:project_management/widgets/time_picker.dart';

class WaitingPeriod extends StatelessWidget {
  const WaitingPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppbar(context, kWaitingPeriod, yellow, kProject),
      body: Padding(
        padding: paddingAll,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kCategory,
                style: textStyleAllerta4,
              ),
              const DropDownSelection(hintText: kSitePreparation),
              const SizedBox(height: 32.0),
              Text(
                kWaitingPeriod,
                style: textStyleAllerta4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TimePickerWidget(
                    icon: Icon(
                      MyFlutterApp.begin,
                      size: 15.0,
                    ),
                  ),
                  TimePickerWidget(
                    icon: Icon(
                      Icons.stop,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              Container(
                color: grey,
                padding: paddingAllSmall,
                child: const CommentTile(),
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      kAbort,
                      style: mainStyle2,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  const BlackButton(
                    title: kSave,
                    icon: MyFlutterApp.paper_plane_white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
