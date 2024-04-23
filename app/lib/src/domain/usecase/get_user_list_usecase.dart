import 'package:app/src/data/model/user.dart';
import 'package:app/src/data/repository/user_repository.dart';
import 'package:app/src/domain/core/use_case.dart';
import 'package:app/src/sl/service_locator.dart';

class GetUserListUseCaseParam {
  final int page;

  GetUserListUseCaseParam({required this.page});
}

class GetUserListUseCase extends UseCase<GetUserListUseCaseParam, List<User>> {
  final UserRepository userRepository;

  GetUserListUseCase() : userRepository = sl.get();

  @override
  Future<List<User>> execute(GetUserListUseCaseParam param) async {
    return await userRepository.getUsers(page: param.page);
  }
}
