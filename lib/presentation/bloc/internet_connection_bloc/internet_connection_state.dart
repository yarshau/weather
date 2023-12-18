part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.lostInternet() = _LostInternet;

  const factory InternetConnectionState.connectedInternet() =
      _ConnectedInternet;
}
