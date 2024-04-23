import 'package:flutter/material.dart';

class UserListLoading extends StatelessWidget {
  const UserListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
