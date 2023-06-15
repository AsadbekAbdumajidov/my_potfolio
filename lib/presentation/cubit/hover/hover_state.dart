part of 'hover_cubit.dart';

class HoverState extends Equatable {
  const HoverState({this.hoverProject = false});

  final bool hoverProject;

  HoverState copyWith({
    bool? hoverProject,
  }) {
    return HoverState(
      hoverProject: hoverProject ?? this.hoverProject,
    );
  }

  @override
  List<Object> get props => [hoverProject];
}
