import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experince_state.dart';
part 'experince_cubit.freezed.dart';

class AddSmsCubit extends Cubit<ExperienceState> {
  AddSmsCubit() : super(const ExperienceState());

  void sds({required int index}) async =>
      emit(state.copyWith(selectedIndex: index));
}
