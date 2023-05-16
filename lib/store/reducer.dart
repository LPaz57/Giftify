import 'package:giftify/types/user_response.dart';
import 'package:giftify/store/actions.dart';

UserResponse reducer(UserResponse previousState, dynamic action) {

  if (action == Actions.LOGIN) {
    return UserResponse(
      user: action.payload.user,
      recoveryToken: action.payload.recoveryToken,
    );
  }

  return previousState;
}
