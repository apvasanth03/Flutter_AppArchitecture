import 'package:app/src/data/datasource/remote/clientinfo/app_http_client_info.dart';
import 'package:app/src/data/datasource/remote/user_remote_data_source.dart';
import 'package:app/src/data/repository/user_repository.dart';
import 'package:app/src/sl/service_locator.dart';
import 'package:http_client/http_client.dart';

void dataSLSetup() {
  sl.registerLazySingleton<HttpClient>(() => HttpClient(AppFSHttpClientInfo()));

  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSource());

  sl.registerLazySingleton<UserRepository>(() => UserRepository());
}
