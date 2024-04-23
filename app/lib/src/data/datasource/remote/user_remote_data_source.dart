import 'package:app/src/data/core/base_remote_data_source.dart';
import 'package:app/src/data/datasource/remote/mapper/user_api_model_mapper.dart';
import 'package:app/src/data/datasource/remote/model/user_list_api_response.dart';
import 'package:app/src/data/model/user.dart';
import 'package:app/src/sl/service_locator.dart';
import 'package:http/http.dart' as http;
import 'package:http_client/http_client.dart';

class UserRemoteDataSource extends BaseRemoteDataSource {
  final HttpClient _httpClient;

  UserRemoteDataSource() : _httpClient = sl.get();

  Future<List<User>> getUsers({required int page}) async {
    var uri = Uri.parse('https://reqres.in/api/users?page=$page');
    var request = http.Request(HttpMethod.get.name, uri);

    var response = await _httpClient.send(
        request: request,
        parser: (json) {
          return UserListApiResponse.fromJson(json as Map<String, dynamic>);
        });

    List<User> users =
        response.data?.map((e) => e.toDataModel()).whereType<User>().toList() ??
            [];
    return users;
  }
}
