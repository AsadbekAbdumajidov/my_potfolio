part of 'experince_cubit.dart';

@freezed
class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    @Default(0) int? selectedIndex,

  }) = _ExperienceState;
}
