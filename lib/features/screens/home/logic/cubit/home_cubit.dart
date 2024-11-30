import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_error_handler/api_error_handler.dart';
import 'package:doctor_app/features/screens/home/data/repo/specializations_repo.dart';
import 'package:doctor_app/features/screens/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SpecializationsRepo _specializationsRepo;
  HomeCubit(this._specializationsRepo) : super(const HomeState.initial());

  void getSpecializationDoc() async {
    emit(const HomeState.specializationsLoading());
    final response = await _specializationsRepo.getSpecialization();

    response.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationsSuccess(
          specializationsResponseModel.specializationDataList));
    }, failure: (error) {
      emit(HomeState.specializationsError(ErrorHandler.handle(error)));
    });
  }
}
