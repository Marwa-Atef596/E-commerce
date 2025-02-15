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
