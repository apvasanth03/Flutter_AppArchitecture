import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final UserUIModel user;

  UserItem({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage:
                  (user.avatar != null) ? NetworkImage(user.avatar!) : null,
            ),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
