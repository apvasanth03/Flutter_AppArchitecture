import 'package:app/src/data/datasource/remote/model/user_api_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_list_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UserListApiResponse {
  final int? page;
  @JsonKey(name: 'per_page')
  final int? perPage;
  final int? total;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<UserApiModel>? data;

  UserListApiResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  @override
  String toString() {
    return 'UserListApiResponse{page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data}';
  }

  factory UserListApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserListApiResponseToJson(this);
}
