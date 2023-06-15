import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hover_state.dart';

class HoverCubit extends Cubit<HoverState> {
  HoverCubit() : super(const HoverState());

  void hoverProject(bool hover) async {
    emit(state.copyWith(hoverProject: hover));
  }
}
