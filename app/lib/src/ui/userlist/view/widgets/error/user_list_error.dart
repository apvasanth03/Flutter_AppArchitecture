import 'package:flutter/material.dart';

class UserListError extends StatelessWidget {
  const UserListError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Something went wrong, please try again.",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
