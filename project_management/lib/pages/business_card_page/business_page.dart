import 'package:flutter/material.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/pages/business_card_page/business_card_mobile.dart';
import 'package:project_management/pages/business_card_page/bussiness_card_tablet.dart';
import 'package:project_management/pages/layout_builder.dart';
import 'package:project_management/pages/my_account_page/my_account.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';
import 'package:project_management/widgets/app_drawer.dart';
import 'package:project_management/widgets/app_drawer_tablet.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({
    Key? key,
    required this.user,
    required this.supData,
  }) : super(key: key);

  final UserData user;
  final SuperiorData supData;

  static const routeName = '/businessPage';

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int current = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
              Padding(
                padding: paddingOnly,
                child: TabBar(
                  controller: _controller,
                  indicatorColor: purple,
                  indicatorWeight: 3.0,
                  labelColor: const Color(0xff000000),
                  labelStyle: textStyleAllerta,
                  onTap: (value) => setState(() => current = value),
                  tabs: const [
                    Tab(text: kMyBusinessCard),
                    Tab(text: kSuperior),
                  ],
                ),
              ),
              current == 0
                  ? CustomLayoutBuilder(
                      mobileMode: BusinessCardTile(
                        header: MyAccountWidget(
                          header: kBusinessCard,
                          title: kAssembler,
                          user: widget.user,
                        ),
                        address: kAddress,
                        contact: kContact,
                        qrData: kQRUser,
                        user: widget.user,
                      ),
                      tabletMode: BusinessCardTablet(
                        header: MyAccountWidget(
                          header: kBusinessCard,
                          title: kAssembler,
                          user: widget.user,
                        ),
                        address: kAddress,
                        contact: kContact,
                        qrData: kQRUser,
                        user: widget.user,
                      ),
                    )
                  : CustomLayoutBuilder(
                      mobileMode: BusinessCardTile(
                        header: MyAccountWidget(
                          header: kSuperior,
                          title: kHeadOfDepartment,
                          user: widget.supData,
                        ),
                        address: kAddress,
                        contact: kContact,
                        qrData: kQRSuperior,
                        user: widget.supData,
                      ),
                      tabletMode: BusinessCardTablet(
                        header: MyAccountWidget(
                          header: kSuperior,
                          title: kHeadOfDepartment,
                          user: widget.supData,
                        ),
                        address: kAddress,
                        contact: kContact,
                        qrData: kQRSuperior,
                        user: widget.supData,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
