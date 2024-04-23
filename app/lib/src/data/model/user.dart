class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String? avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.avatar,
  });

  @override
  String toString() {
    return 'User{id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar}';
  }
}
