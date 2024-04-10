import 'dart:developer';

import 'package:calander/exports/bloc_exports.dart';
import 'package:calander/utils/helpers/datetime_manipulator.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<InitializeHomeView>(_initializeHomeView);
  }

  Future<void> _initializeHomeView(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(state.copyWith(
        status: StateStatus.initializeInProgress,
        errorMessage: null,
      ));

      emit(state.copyWith(
        status: StateStatus.initializeSuccess,
        englishDate: DateTimeManipulator.dateFormatterAsString(
          date: DateTime.now(),
        ),
        nepaliDate: DateTimeManipulator.nepaliDateFormatterAsString(
          date: NepaliDateTime.now(),
        ),
      ));
    } catch (e, stackTrace) {
      emit(state.copyWith(
        status: StateStatus.initializeFailed,
        errorMessage: 'Something went wrong. Please try again.',
      ));
      log(stackTrace.toString());
    }
  }
}
