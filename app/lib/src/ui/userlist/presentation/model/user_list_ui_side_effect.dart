sealed class UserListUISideEffect {}

class NavigateToUserDetailScreen extends UserListUISideEffect {
  final int userID;

  NavigateToUserDetailScreen({required this.userID});
}
