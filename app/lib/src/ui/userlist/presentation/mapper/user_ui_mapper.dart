import 'package:app/src/data/model/user.dart';
import 'package:app/src/ui/core/base_mapper.dart';
import 'package:app/src/ui/userlist/presentation/model/user_ui_model.dart';

class UserUIMapper extends BaseMapper<User, UserUIModel> {
  @override
  Future<UserUIModel> map(User input) async {
    return UserUIModel(
      id: input.id,
      name: '${input.firstName} ${input.lastName}',
      email: input.email,
      avatar: input.avatar,
    );
  }
}
