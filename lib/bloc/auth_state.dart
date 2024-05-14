part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}
final class AuthInitial extends AuthState {}
// state is just the intial at beginning
final class AuthSuccess extends AuthState {
  // Again during authsuccess we want to pass user data
  // & that's why we'llb declaring those data and constructors here
  final String uid;
  AuthSuccess({required this.uid});
}

final class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}
final class AuthLoading extends AuthState {

}