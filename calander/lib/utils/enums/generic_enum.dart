import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'status')
enum StateStatus {
  initializeInProgress('initializeInProgress'),
  initializeSuccess('initializeSuccess'),
  initializeFailed('initializeFailed'),
  deleteInProgress('deleteInProgress'),
  deleteSuccess('deleteSuccess'),
  deleteFailed('deleteFailed'),
  updateInProgress('updateInProgress'),
  updateSuccess('updateSuccess'),
  updateFailed('updateFailed'),
  submitInProgress('submitInProgress'),
  submitSuccess('submitSuccess'),
  submitFailed('submitFailed');

  const StateStatus(this.status);
  final String status;
}
