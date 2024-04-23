import 'package:app/src/ui/userlist/presentation/model/user_list_ui_state.dart';
import 'package:app/src/ui/userlist/view/widgets/data/user_list_data.dart';
import 'package:app/src/ui/userlist/view/widgets/error/user_list_error.dart';
import 'package:app/src/ui/userlist/view/widgets/loading/user_list_loading.dart';
import 'package:flutter/material.dart';

class UserListScreenContent extends StatelessWidget {
  final UserListUIState uiState;

  UserListScreenContent({required this.uiState});

  @override
  Widget build(BuildContext context) {
    return switch (uiState) {
      Loading() => UserListLoading(),
      Data(users: var users) => UserListData(users: users),
      Error() => UserListError(),
    };
  }
}
