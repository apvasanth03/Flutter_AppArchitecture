import 'package:app/src/sl/service_locator.dart';
import 'package:app/src/ui/userlist/presentation/mapper/user_ui_mapper.dart';
import 'package:app/src/ui/userlist/presentation/viewmodel/user_list_view_model.dart';

void uiUserListSLSetup() {
  sl.registerFactory<UserUIMapper>(() => UserUIMapper());

  sl.registerFactory<UserListViewModel>(() => UserListViewModel());
}
