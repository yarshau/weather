import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/localization_repository/localization_repository.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc({required this.localizationRepository})
      : super(LocalizationState.localize()) {
    on<LocalizationEvent>(_mapEventToState);
  }

  final LocalizationRepository localizationRepository;

  Future<void> _init(
    _LocalizatioInitial event,
    Emitter<LocalizationState> emit,
  ) async {
    final locale = await localizationRepository.fetchLocale();
    emit(LocalizationState.localize(locale: locale));
  }

  Future<void> _mapEventToState(
    LocalizationEvent event,
    Emitter<LocalizationState> emit,
  ) async {
    await event.map(
      changeLang: (e) => _changeLang(e, emit),
      initial: (e) => _init(e, emit),
    );
  }

  Future<void> _changeLang(
    _ChangeLang event,
    Emitter<LocalizationState> emit,
  ) async {
    await localizationRepository.setLocale(event.locale);
    emit(LocalizationState.localize(locale: event.locale));
  }
}
