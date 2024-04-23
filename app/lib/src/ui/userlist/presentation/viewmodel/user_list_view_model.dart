import 'package:app/src/data/model/user.dart';
import 'package:app/src/domain/core/result.dart' as Result;
import 'package:app/src/domain/usecase/get_user_list_usecase.dart';
import 'package:app/src/sl/service_locator.dart';
import 'package:app/src/ui/core/base_view_model.dart';
import 'package:app/src/ui/userlist/presentation/mapper/user_ui_mapper.dart';
import 'package:app/src/ui/userlist/presentation/model/user_list_ui_event.dart';
import 'package:app/src/ui/userlist/presentation/model/user_list_ui_side_effect.dart';
import 'package:app/src/ui/userlist/presentation/model/user_list_ui_state.dart';
import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';

class UserListViewModel extends BaseViewModel<UserListUIState, UserListUIEvent,
    UserListUISideEffect> {
  final GetUserListUseCase _getUserListUseCase;
  final UserUIMapper _userUIMapper;

  UserListViewModel()
      : _getUserListUseCase = sl.get(),
        _userUIMapper = sl.get() {
    _loadUsers();
  }

  // region LOAD USER
  Future<void> _loadUsers() async {
    var param = GetUserListUseCaseParam(page: 1);
    var result = await _getUserListUseCase(param);

    switch (result) {
      case Result.Success(data: var users):
        await _loadUsersSuccess(users);
      case Result.Error():
        _loadUsersFailure();
    }
  }

  Future<void> _loadUsersSuccess(List<User> users) async {
    List<Future<UserUIModel>> uiModelFutures =
        users.map((e) => _userUIMapper(e)).toList();
    List<UserUIModel> uiModels = await Future.wait(uiModelFutures);

    lUIStateStream.add(Data(users: uiModels));
  }

  void _loadUsersFailure() {
    lUIStateStream.add(Error());
  }

// endregion

  // region HANDLE EVENT
  @override
  void handleEvent(UserListUIEvent event) {
    switch (event) {
      case ItemClicked(user: var user):
        onItemClicked(user);
        break;
    }
  }

  void onItemClicked(UserUIModel user) {
    lSideEffectStream.add(NavigateToUserDetailScreen(userID: user.id));
  }
// endregion
}
