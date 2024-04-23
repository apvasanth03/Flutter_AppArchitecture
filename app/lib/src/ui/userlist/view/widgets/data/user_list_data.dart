import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';
import 'package:app/src/ui/userlist/view/widgets/data/user_item.dart';
import 'package:flutter/material.dart';

class UserListData extends StatelessWidget {
  final List<UserUIModel> users;

  UserListData({
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserItem(
            user: users[index],
          );
        });
  }
}
