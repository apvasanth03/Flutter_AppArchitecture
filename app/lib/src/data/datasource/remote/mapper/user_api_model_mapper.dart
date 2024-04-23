import 'package:app/src/data/datasource/remote/model/user_api_model.dart';
import 'package:app/src/data/model/user.dart';

extension UserApiModelMapper on UserApiModel {
  User? toDataModel() {
    if (id == null) {
      return null;
    }

    return User(
      id: id!,
      email: email ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      avatar: avatar,
    );
  }
}
