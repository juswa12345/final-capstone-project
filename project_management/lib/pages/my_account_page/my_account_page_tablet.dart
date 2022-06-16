import 'package:flutter/material.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/pages/layout_builder.dart';
import 'package:project_management/pages/my_account_page/my_account.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/widgets/app_drawer.dart';
import 'package:project_management/widgets/app_drawer_tablet.dart';

class MyAccountPageTablet extends StatelessWidget {
  MyAccountPageTablet({
    Key? key,
    required this.user,
    required this.supData,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final UserData user;
  final SuperiorData supData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: appbarHomePage(_key),
      drawer: const CustomLayoutBuilder(
        mobileMode: AppDrawer(),
        tabletMode: AppDrawerTablet(),
      ),
      backgroundColor: grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: paddingAll,
                    child: Container(
                      padding: paddingAll,
                      color: const Color(0xffffffff),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyAccountWidget(
                            header: kMyAccount,
                            title: kAssembler,
                            user: user,
                          ),
                          SuperiorTile(supData: supData),
                          WeeklyReport(
                            imgUrl: user.imgUrl,
                          ),
                          const MonthlyReport(),
                          const SizedBox(height: 15.0)
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: paddingOnly,
                          child: Container(
                            padding: paddingAll,
                            color: const Color(0xffffffff),
                            child: Column(
                              children: const [
                                Overview(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: paddingSide,
                          child: Container(
                            padding: paddingAll,
                            color: const Color(0xffE0E0E0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(kCurrentBudget, style: mainStyle2),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color(0xffffb72b),
                                  child: Text('7', style: budgetCount),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: paddingOnly,
                          child: Container(
                            padding: paddingAll,
                            color: const Color(0xffffffff),
                            child: Column(
                              children: const [
                                SickDays(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: paddingAll,
                          child: Container(
                            padding: paddingAll,
                            color: const Color(0xffffffff),
                            child: Column(
                              children: const [
                                AZAccount(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
