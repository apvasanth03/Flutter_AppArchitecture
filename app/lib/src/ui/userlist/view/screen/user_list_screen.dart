import 'package:app/src/sl/service_locator.dart';
import 'package:app/src/ui/userlist/presentation/model/user_list_ui_state.dart';
import 'package:app/src/ui/userlist/presentation/viewmodel/user_list_view_model.dart';
import 'package:app/src/ui/userlist/view/widgets/loading/user_list_loading.dart';
import 'package:app/src/ui/userlist/view/widgets/user_list_screen_content.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late UserListViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = sl.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: StreamBuilder<UserListUIState>(
        stream: _viewModel.uiStateStream,
        builder:
            (BuildContext context, AsyncSnapshot<UserListUIState> snapshot) {
          if (snapshot.hasData) {
            return UserListScreenContent(
              uiState: snapshot.data!,
            );
          } else {
            return UserListLoading();
          }
        },
      ),
    );
  }
}
