import 'package:doctor_app/core/networking/api_error_handler/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_results/api_results.dart';
import 'package:doctor_app/core/networking/api_services/api_services.dart';
import 'package:doctor_app/features/screens/login/data/model/login_request_body_model.dart';
import 'package:doctor_app/features/screens/login/data/model/login_response_model.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResults<LoginResponse>> login(
      LoginRequestBodyModel loginRequestBodyModel) async {
    try {
      final response = await _apiServices.login(loginRequestBodyModel);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
