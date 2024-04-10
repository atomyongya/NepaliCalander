part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    String? nepaliDate,
    String? englishDate,
    String? errorMessage,
    @Default(StateStatus.initializeInProgress) StateStatus status,
  }) = _HomeState;
}
