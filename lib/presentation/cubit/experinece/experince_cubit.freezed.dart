// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experince_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperienceState {
  int? get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceStateCopyWith<ExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(
          ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res, ExperienceState>;
  @useResult
  $Res call({int? selectedIndex});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res, $Val extends ExperienceState>
    implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceStateImplCopyWith<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  factory _$$ExperienceStateImplCopyWith(_$ExperienceStateImpl value,
          $Res Function(_$ExperienceStateImpl) then) =
      __$$ExperienceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? selectedIndex});
}

/// @nodoc
class __$$ExperienceStateImplCopyWithImpl<$Res>
    extends _$ExperienceStateCopyWithImpl<$Res, _$ExperienceStateImpl>
    implements _$$ExperienceStateImplCopyWith<$Res> {
  __$$ExperienceStateImplCopyWithImpl(
      _$ExperienceStateImpl _value, $Res Function(_$ExperienceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_$ExperienceStateImpl(
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ExperienceStateImpl implements _ExperienceState {
  const _$ExperienceStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int? selectedIndex;

  @override
  String toString() {
    return 'ExperienceState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceStateImplCopyWith<_$ExperienceStateImpl> get copyWith =>
      __$$ExperienceStateImplCopyWithImpl<_$ExperienceStateImpl>(
          this, _$identity);
}

abstract class _ExperienceState implements ExperienceState {
  const factory _ExperienceState({final int? selectedIndex}) =
      _$ExperienceStateImpl;

  @override
  int? get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceStateImplCopyWith<_$ExperienceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
