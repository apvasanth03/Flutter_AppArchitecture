import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';

sealed class UserListUIEvent {}

class ItemClicked extends UserListUIEvent {
  final UserUIModel user;

  ItemClicked({required this.user});
}
