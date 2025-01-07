import 'package:freezed_annotation/freezed_annotation.dart';

part 'communication.freezed.dart';
@freezed
class Communication with _$Communication{

  const factory Communication({ text,  type}) = _Communication;

}
