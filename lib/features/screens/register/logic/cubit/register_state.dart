import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = loading;
  const factory RegisterState.success(T data) = success<T>;
  const factory RegisterState.error({required String error}) = Error;
}
