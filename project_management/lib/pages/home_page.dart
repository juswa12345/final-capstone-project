import 'package:flutter/material.dart';
import 'package:project_management/models/provider/drawer_manager.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/union_page_state.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/pages/business_card_page/business_page.dart';
import 'package:project_management/pages/layout_builder.dart';
import 'package:project_management/pages/my_account_page/my_account_page.dart';
import 'package:project_management/pages/my_account_page/my_account_page_tablet.dart';
import 'package:project_management/pages/time_tracking/time_tracking_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.unionPageState,
    required this.userData,
    required this.unionState,
    required this.superiorData,
  }) : super(key: key);

  final List<UserData> userData;
  final List<SuperiorData> superiorData;
  final UnionPageState unionState;
  final UnionPageState unionPageState;

  static const routeName = '/homePage';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DrawerManager>(
      create: (context) => DrawerManager(),
      child: Scaffold(
        body: Consumer<DrawerManager>(
            builder: (ctx, manager, _) => unionPageState.when(
                  (userData) => unionState.when(
                    (value) => manager.current == 0
                        ? CustomLayoutBuilder(
                            mobileMode: MyAccountPage(
                              user: userData[0],
                              supData: superiorData[0],
                            ),
                            tabletMode: MyAccountPageTablet(
                              user: userData[0],
                              supData: superiorData[0],
                            ),
                          )
                        : manager.current == 1
                            ? BusinessPage(
                                user: userData[0],
                                supData: superiorData[0],
                              )
                            : TimeTrackingPage(user: userData[0]),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (message) => Center(child: Text(message!)),
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (message) => Center(child: Text(message!)),
                )),
      ),
    );
  }
}
