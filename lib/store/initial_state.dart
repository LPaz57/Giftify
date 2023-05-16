import 'package:giftify/types/user.dart';
import 'package:giftify/types/user_response.dart';

var initialState = UserResponse(
  user: User(
    id: '',
    firstName: '',
    lastName: '',
    email: '',
    role: '',
    avatar: '',
    createdAt: '',
    updatedAt: '',
  ),
  recoveryToken: '',
);
