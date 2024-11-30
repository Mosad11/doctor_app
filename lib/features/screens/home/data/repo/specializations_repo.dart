import 'package:doctor_app/core/networking/api_error_handler/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_results/api_results.dart';
import 'package:doctor_app/features/screens/home/data/home_api_services/home_api_services/home_api_services.dart';
import 'package:doctor_app/features/screens/home/data/model/specializations_response_model.dart';

class SpecializationsRepo {
  final HomeApiService _homeApiService;

  SpecializationsRepo(this._homeApiService);

  Future<ApiResults<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
