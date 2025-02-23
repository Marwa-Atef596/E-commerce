part of 'authentication_cubit.dart';

sealed class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class LoginSuccess extends AuthenticationState {}

class LoginLoading extends AuthenticationState {}

class LoginFailure extends AuthenticationState {
  final String errMessage;

  LoginFailure({required this.errMessage});
}

class SignUpSuccess extends AuthenticationState {}

class SignUpLoading extends AuthenticationState {}

class SignUpFailure extends AuthenticationState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

class GoogleSignInSuccess extends AuthenticationState {}

class GoogleSignInLoading extends AuthenticationState {}

class GoogleSignInFailure extends AuthenticationState {
  // final String errMessage;

  // GoogleSignInFailure({required this.errMessage});
}


class LogoutSuccess extends AuthenticationState {}

class LogoutLoading extends AuthenticationState {}

class LogoutFailure extends AuthenticationState {
  final String errMessage;

  LogoutFailure({required this.errMessage});
}


class ResetPasswordSuccess extends AuthenticationState{}
class ResetPasswordLoading extends AuthenticationState{}
class ResetPasswordFailure extends AuthenticationState{
  final String errMessage;

  ResetPasswordFailure({required this.errMessage});

}


final class UserDataAddedLoading extends AuthenticationState {}

final class UserDataAddedSuccess extends AuthenticationState {}

final class UserDataAddedFailure extends AuthenticationState {
  final String errMessage;

  UserDataAddedFailure({required this.errMessage});

}


final class GetUserDataLoading extends AuthenticationState {}

final class GetUserDataSuccess extends AuthenticationState {}

final class GetUserDataError extends AuthenticationState {}