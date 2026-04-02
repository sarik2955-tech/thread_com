import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final HomeStatus status;
  final String errorText;
  final List<dynamic>? notes;

  const HomeState({this.status = HomeStatus.empty, this.errorText = "", this.notes});

  HomeState copyWith({HomeStatus? status, String? errorText, List<dynamic>? notes}) {
    return HomeState(
      notes: notes ?? this.notes,
      status: status ?? this.status,
      errorText: errorText ?? this.errorText,
    );
  }

  @override
  List<Object?> get props => [status, errorText, notes];
}

enum HomeStatus { initial, loading, loaded, error, empty }