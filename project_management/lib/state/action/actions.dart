// ignore_for_file: await_only_futures

import 'package:async_redux/async_redux.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/user_data/user_data.dart';
import 'package:project_management/state/app_state.dart';

class FetchUserData extends ReduxAction<AppState> {
  List<UserData> user = [];

  CollectionReference userInfo = FirebaseFirestore.instance.collection('user');
  @override
  Future<AppState> reduce() async {
    await userInfo.get().then((snapshot) {
      for (var doc in snapshot.docs) {
        user.add(UserData(
          firstname: doc['first name'],
          lastname: doc['last name'],
          email: doc['email'],
          imgUrl: doc['imgUrl'],
          address: doc['address'],
          number: doc['number'],
          superiorEmail: doc['superior']['email'],
        ));
      }
    });

    if (state.user.isEmpty) {
      return state.copyWith(user: user);
    }
    return state;
  }
}

class OnInitUserData extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    dispatch(FetchUserData());
    dispatch(FetchSuperiorData());
    return state;
  }
}

class FetchSuperiorData extends ReduxAction<AppState> {
  List<SuperiorData> superior = [];

  CollectionReference superiorInfo = FirebaseFirestore.instance.collection('superior');
  @override
  Future<AppState> reduce() async {
    await superiorInfo.get().then((snapshot) {
      for (var doc in snapshot.docs) {
        superior.add(SuperiorData(
          firstname: doc['first name'],
          lastname: doc['last name'],
          email: doc['email'],
          imgUrl: doc['imgUrl'],
          address: doc['address'],
          number: doc['number'],
        ));
      }
    });

    if (state.superiodData.isEmpty) {
      return state.copyWith(superiodData: superior);
    }
    return state;
  }
}
