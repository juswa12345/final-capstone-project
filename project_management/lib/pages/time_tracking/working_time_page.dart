import 'package:flutter/material.dart';
import 'package:project_management/pages/time_tracking/break_page.dart';
import 'package:project_management/pages/time_tracking/stand_by_page.dart';
import 'package:project_management/pages/time_tracking/waiting_period_page.dart';
import 'package:project_management/pages/weekly_report/comment_tile.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/black_button.dart';
import 'package:project_management/widgets/custome_selector_widget.dart';
import 'package:project_management/widgets/drop_down.dart';
import 'package:project_management/widgets/time_picker.dart';

class WorkingTimePage extends StatelessWidget {
  const WorkingTimePage({
    Key? key,
    required this.isPause,
    required this.imgUrl,
  }) : super(key: key);

  final bool isPause;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingAll,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kCategory,
              style: textStyleAllerta4,
            ),
            const DropDownSelection(hintText: kPleaseSelectCategory),
            const SizedBox(height: 32.0),
            !isPause
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kProjectNumber,
                        style: textStyleAllerta4,
                      ),
                      const DropDownSelection(hintText: kAddPojectNumber),
                      const SizedBox(height: 32.0),
                      CustomSelectorWidget(
                        title: kEmployee,
                        subTitle: kAddOrEdit,
                        color: black,
                        route: Scaffold(
                            body: Container(
                          color: white,
                        )),
                      ),
                      const SizedBox(height: 32.0),
                      Text(
                        kWorkingTime,
                        style: textStyleAllerta4,
                      ),
                    ],
                  )
                : Text(
                    kBreak,
                    style: textStyleAllerta4,
                  ),
            const SizedBox(height: 10.0),
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
            !isPause
                ? Column(
                    children: [
                      const SizedBox(height: 32.0),
                      CustomSelectorWidget(
                        title: kBreak,
                        subTitle: kAddOrEdit,
                        color: violet,
                        route: BreakPage(imgUrl: imgUrl),
                      ),
                      const SizedBox(height: 32.0),
                      CustomSelectorWidget(
                        title: kWaitingPeriod,
                        subTitle: kAddOrEdit,
                        color: yellow,
                        route: WaitingPeriod(imgUrl: imgUrl),
                      ),
                      const SizedBox(height: 32.0),
                      CustomSelectorWidget(
                        title: kStandBy,
                        subTitle: kAddOrEdit,
                        color: purple,
                        route: StandBy(imgUrl: imgUrl),
                      ),
                    ],
                  )
                : Container(),
            const SizedBox(height: 32.0),
            Container(
              color: grey,
              padding: paddingAllSmall,
              child: CommentTile(imgUrl: imgUrl),
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
    );
  }
}
