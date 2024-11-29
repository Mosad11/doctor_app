
import 'package:doctor_app/core/networking/api_error_handler/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResults<T> with _$ApiResults<T> {

  const factory ApiResults.success(T data) = Success <T>;
  const factory ApiResults.failure(ErrorHandler errorhandler) = Failure <T>;

}