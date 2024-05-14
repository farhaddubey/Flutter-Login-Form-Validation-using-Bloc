part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthLoginRequested extends AuthEvent {
  final String email;
  final String password;
  AuthLoginRequested({required this.email, required this.password});
  // As now the event AuthLoginRequested is having constructor, every time it's called it's required to pass the
  // args email & password. That's we created constructor here . '
  // 'Construcor invocation is necessary here.'
}

