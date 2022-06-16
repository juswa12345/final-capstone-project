import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/pages/time_tracking/add_time_track.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/utilities/rectangle_clipper.dart';

PreferredSizeWidget appbarLogin() {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: const Color(0x00000000),
    elevation: 0,
  );
}

PreferredSizeWidget appbarHomePage(GlobalKey<ScaffoldState> key) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.dark,
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        MyFlutterApp.menu,
        size: 15,
        color: Color(0xff000000),
      ),
      onPressed: () => key.currentState!.openDrawer(),
    ),
    backgroundColor: const Color(0xffffffff),
  );
}

Container appbarTimeTracking(
  BuildContext context,
  GlobalKey<ScaffoldState> key,
  String timeTable,
  bool isSended,
  UserData user,
) {
  return Container(
    color: white,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      MyFlutterApp.menu,
                      size: 13,
                      color: Color(0xff000000),
                    ),
                    onPressed: () => key.currentState!.openDrawer(),
                  ),
                  const SizedBox(height: 15.0),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    timeTable,
                    style: textStyleAllerta4,
                  ),
                  Row(
                    children: [
                      Trapezoid(
                        child: Text(
                          kOpen,
                          style: subStyle2,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(dateToday),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 20.0,
                backgroundColor: Color(0xff000000),
                child: CircleAvatar(
                  backgroundColor: white,
                  foregroundColor: Color(0xff000000),
                  radius: 18.0,
                  child: Icon(
                    MyFlutterApp.calendar_dotted,
                    size: 17.0,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTimeTrack(
                      imgUrl: user.imgUrl,
                    ),
                  ),
                ),
                child: const CircleAvatar(
                  backgroundColor: Color(0xFFD3D3D3),
                  foregroundColor: Color(0xff000000),
                  radius: 20.0,
                  child: Icon(
                    MyFlutterApp.add_black,
                    size: 17.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 7; i++)
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: isSended ? dayColors[i] : const Color(0x64E7E7E7),
                      radius: 22.0,
                      child: isSended
                          ? const Icon(
                              MyFlutterApp.check_black,
                              size: 17.0,
                            )
                          : Text(
                              days.values.elementAt(i),
                              style: dayStyle,
                            ),
                    ),
                    Text(
                      days.values.elementAt(i),
                    )
                  ],
                ),
            ],
          ),
        ],
      ),
    ),
  );
}

PreferredSizeWidget appbarNavigations(BuildContext context, String title) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.dark,
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: const Color(0xffffffff),
    leading: IconButton(
      icon: const Icon(
        MyFlutterApp.back_arrow_black,
        size: 15,
        color: Color(0xff000000),
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      title,
      style: textStyleAllerta2,
    ),
    foregroundColor: const Color(0xff000000),
  );
}

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.dark,
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        MyFlutterApp.close,
        size: 15,
        color: Color(0xff000000),
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    backgroundColor: const Color(0xffffffff),
    actions: const [
      Icon(
        MyFlutterApp.flutter_logo,
        size: 40,
        color: Color(0xff8465FF),
      ),
      SizedBox(width: 20.0),
    ],
  );
}

PreferredSizeWidget customeAppbar(BuildContext context, String title, Color color, String subTitle) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.light,
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: color,
    leading: IconButton(
      icon: const Icon(
        MyFlutterApp.back_arrow_black,
        size: 15,
        color: white,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textStyleAllerta4,
        ),
        Text(
          subTitle,
          style: textStyleAllertaExtraSmall,
        )
      ],
    ),
    foregroundColor: white,
  );
}
