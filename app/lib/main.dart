import 'package:app/src/sl/service_locator.dart';
import 'package:app/src/ui/userlist/view/screen/user_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  slSetup();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserListScreen(),
    );
  }
}
