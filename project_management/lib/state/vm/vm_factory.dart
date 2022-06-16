import 'package:async_redux/async_redux.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/union_page_state.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/pages/home_page_connector.dart';
import 'package:project_management/state/app_state.dart';
import 'package:project_management/state/vm/user_model.dart';

class Factory extends VmFactory<AppState, HomePageConnector> {
  Factory(widget) : super(widget);

  @override
  Vm fromStore() {
    return UserModel(
      userData: state.user,
      superiorData: state.superiodData,
      unionPageState: _getLoadingState(),
      unionState: _getLoadingState2(),
    );
  }

  UnionPageState<List<UserData>> _getLoadingState() {
    Future.delayed(const Duration(milliseconds: 3000));
    if (state.user.isEmpty || state.superiodData.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.user);
    }
  }

  UnionPageState<List<SuperiorData>> _getLoadingState2() {
    Future.delayed(const Duration(milliseconds: 3000));
    if (state.superiodData.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.superiodData);
    }
  }
}
