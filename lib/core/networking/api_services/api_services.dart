import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants/api_constants.dart';
import 'package:doctor_app/features/screens/login/data/model/login_request_body_model.dart';
import 'package:doctor_app/features/screens/login/data/model/login_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.loginUrl)
  Future<LoginResponse> login(
    @Body() LoginRequestBodyModel loginRequestBodyModel,
  );
}
