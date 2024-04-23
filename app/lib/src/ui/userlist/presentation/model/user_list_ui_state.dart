import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';

sealed class UserListUIState {}

class Loading extends UserListUIState {}

class Data extends UserListUIState {
  final List<UserUIModel> users;

  Data({required this.users});
}

class Error extends UserListUIState {}
