import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_management/pages/main_page.dart';
import 'package:project_management/pages/time_tracking/add_time_track.dart';
import 'package:project_management/pages/time_tracking/time_tracking_page.dart';
import 'package:project_management/pages/weekly_report/weekly_report_page.dart';
import 'package:project_management/state/app_state.dart';
import 'package:project_management/utilities/styles.dart';

var state = AppState.initialState();
var store = Store<AppState>(initialState: state);
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  store = Store<AppState>(initialState: state);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Final Capstone',
          theme: themeData,
          home: const MainPage(),
          routes: {
            WeeklyReportPage.routeName: (context) => const WeeklyReportPage(),
            TimeTrackingPage.routeName: (context) => const TimeTrackingPage(),
            AddTimeTrack.routeName: (context) => const AddTimeTrack(),
          },
        ),
      );
}
