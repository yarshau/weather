import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'internet_connection_event.dart';

part 'internet_connection_state.dart';

part 'internet_connection_bloc.freezed.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc()
      : super(const InternetConnectionState.lostInternet()) {
    on<InternetConnectionEvent>(_mapEventToState);
  }

  bool _isInternetConnected = false;

  Future<void> _mapEventToState(InternetConnectionEvent event,
          Emitter<InternetConnectionState> emit) =>
      event.map(
        checkInternet: (e) {
          return _checkInternet(e, emit);
        },
      );

  Future<void> _checkInternet(InternetConnectionEvent event,
      Emitter<InternetConnectionState> emit) async {
    bool result = await InternetConnectionChecker().hasConnection;
    _isInternetConnected = result;
    if (_isInternetConnected) {
      emit(const InternetConnectionState.connectedInternet());
    } else {
      emit(const InternetConnectionState.lostInternet());
    }
  }
}
