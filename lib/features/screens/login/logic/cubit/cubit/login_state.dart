import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = loading;
  const factory LoginState.success(T data) = success<T>;
  const factory LoginState.error({required String error}) = Error;
}
