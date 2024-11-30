import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants/api_constants.dart';
import 'package:doctor_app/features/screens/home/data/home_api_services/constants_api/home_api_constants.dart';
import 'package:doctor_app/features/screens/home/data/model/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specialization)
  Future<SpecializationsResponseModel> getSpecialization();
}
