part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final AuthStatus status;
  final String errorText;
  const AuthState({this.status = AuthStatus.initial, this.errorText = ""});

  @override
  List<Object?> get props => [status, errorText];
}

enum AuthStatus { error, initial, loading, authentificated, success }

void qoshish({required int son1, int son2 = 5}) {
  // * body
}