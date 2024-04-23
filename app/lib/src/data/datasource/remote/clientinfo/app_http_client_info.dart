import 'package:http_client/http_client.dart';

class AppFSHttpClientInfo implements HttpClientInfo {
  AppFSHttpClientInfo();

  @override
  Map<String, String> headers() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }
}
