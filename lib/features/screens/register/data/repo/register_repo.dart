import 'package:doctor_app/core/networking/api_error_handler/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_results/api_results.dart';
import 'package:doctor_app/core/networking/api_services/api_services.dart';
import 'package:doctor_app/features/screens/register/data/model/register_reponse_model.dart';
import 'package:doctor_app/features/screens/register/data/model/register_request_body_model.dart';

class RegisterRepo {
  final ApiServices _apiServices;

  RegisterRepo(this._apiServices);

  Future<ApiResults<RegisterReponseModel>> register(
      RegisterRequestBodyModel registerRequestBodyModel) async {
    try {
      final response = await _apiServices.register(registerRequestBodyModel);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
