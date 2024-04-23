import 'package:app/src/data/datasource/remote/user_remote_data_source.dart';
import 'package:app/src/data/model/user.dart';
import 'package:app/src/sl/service_locator.dart';

class UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepository() : _userRemoteDataSource = sl.get();

  Future<List<User>> getUsers({required int page}) async {
    return _userRemoteDataSource.getUsers(page: page);
  }
}
