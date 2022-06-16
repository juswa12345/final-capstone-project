import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:project_management/pages/home_page.dart';
import 'package:project_management/state/action/actions.dart';
import 'package:project_management/state/app_state.dart';
import 'package:project_management/state/vm/user_model.dart';
import 'package:project_management/state/vm/vm_factory.dart';

class HomePageConnector extends StatelessWidget {
  const HomePageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserModel>(
      vm: () => Factory(this),
      onInit: (store) => store.dispatch(OnInitUserData()),
      builder: (context, vm) => HomePage(
        unionState: vm.unionState,
        unionPageState: vm.unionPageState,
        userData: vm.userData,
        superiorData: vm.superiorData,
      ),
    );
  }
}
