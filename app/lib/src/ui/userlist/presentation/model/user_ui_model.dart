class UserUIModel {
  final int id;
  final String name;
  final String email;
  final String? avatar;

  UserUIModel({
    required this.id,
    required this.name,
    required this.email,
    this.avatar,
  });
}
