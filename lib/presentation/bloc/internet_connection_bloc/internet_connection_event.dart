part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionEvent with _$InternetConnectionEvent {
  const factory InternetConnectionEvent.checkInternet() = _CheckInternet;
}
