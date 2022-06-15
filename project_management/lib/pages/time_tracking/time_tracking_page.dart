import 'package:flutter/material.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/utilities/my_flutter_app_icons.dart';
import 'package:project_management/widgets/app_drawer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimeTrackingPage extends StatefulWidget {
  const TimeTrackingPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserData user;
  @override
  State<TimeTrackingPage> createState() => _TimeTrackingPageState();
}

class _TimeTrackingPageState extends State<TimeTrackingPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: grey,
      key: _key,
      drawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: appbarTimeTracking(
              context,
              _key,
              'Donnerstag',
              false,
              widget.user,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 400.0,
              child: SfCalendar(
                view: CalendarView.day,
                firstDayOfWeek: 1,
                timeSlotViewSettings: const TimeSlotViewSettings(
                  startHour: 7,
                  endHour: 16,
                  timeFormat: 'hh:mm',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: paddingAll,
              child: Container(
                padding: paddingAll,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '08 : 00 Std.',
                          style: headerText,
                        ),
                        const Text(kTotalWorkingHours),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: black,
                      radius: 22.0,
                      child: Icon(MyFlutterApp.paper_plane_white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
