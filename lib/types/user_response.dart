import 'package:giftify/types/user.dart';

class UserResponse {
  User user;
  String recoveryToken;

  UserResponse({required this.user, required this.recoveryToken});
}
