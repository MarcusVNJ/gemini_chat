// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'communication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Communication {
  dynamic get text => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunicationCopyWith<Communication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationCopyWith<$Res> {
  factory $CommunicationCopyWith(
          Communication value, $Res Function(Communication) then) =
      _$CommunicationCopyWithImpl<$Res, Communication>;
  @useResult
  $Res call({dynamic text, dynamic type});
}

/// @nodoc
class _$CommunicationCopyWithImpl<$Res, $Val extends Communication>
    implements $CommunicationCopyWith<$Res> {
  _$CommunicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunicationImplCopyWith<$Res>
    implements $CommunicationCopyWith<$Res> {
  factory _$$CommunicationImplCopyWith(
          _$CommunicationImpl value, $Res Function(_$CommunicationImpl) then) =
      __$$CommunicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic text, dynamic type});
}

/// @nodoc
class __$$CommunicationImplCopyWithImpl<$Res>
    extends _$CommunicationCopyWithImpl<$Res, _$CommunicationImpl>
    implements _$$CommunicationImplCopyWith<$Res> {
  __$$CommunicationImplCopyWithImpl(
      _$CommunicationImpl _value, $Res Function(_$CommunicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CommunicationImpl(
      text: freezed == text ? _value.text! : text,
      type: freezed == type ? _value.type! : type,
    ));
  }
}

/// @nodoc

class _$CommunicationImpl implements _Communication {
  const _$CommunicationImpl({this.text, this.type});

  @override
  final dynamic text;
  @override
  final dynamic type;

  @override
  String toString() {
    return 'Communication(text: $text, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunicationImpl &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunicationImplCopyWith<_$CommunicationImpl> get copyWith =>
      __$$CommunicationImplCopyWithImpl<_$CommunicationImpl>(this, _$identity);
}

abstract class _Communication implements Communication {
  const factory _Communication({final dynamic text, final dynamic type}) =
      _$CommunicationImpl;

  @override
  dynamic get text;
  @override
  dynamic get type;
  @override
  @JsonKey(ignore: true)
  _$$CommunicationImplCopyWith<_$CommunicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
