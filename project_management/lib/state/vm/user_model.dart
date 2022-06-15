import 'package:async_redux/async_redux.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/union_page_state.dart';
import 'package:project_management/models/user_data/user_data.dart';

class UserModel extends Vm {
  UserModel({
    required this.userData,
    required this.superiorData,
    required this.unionPageState,
    required this.unionState,
  }) : super(equals: [
          userData,
          unionPageState,
          superiorData,
          unionState,
        ]);

  final List<UserData> userData;
  final List<SuperiorData> superiorData;
  final UnionPageState<List<UserData>> unionPageState;
  final UnionPageState<List<SuperiorData>> unionState;
}
