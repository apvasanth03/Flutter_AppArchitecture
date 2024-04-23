import 'package:app/src/domain/usecase/get_user_list_usecase.dart';
import 'package:app/src/sl/service_locator.dart';

void domainSLSetup() {
  sl.registerFactory(() => GetUserListUseCase());
}
