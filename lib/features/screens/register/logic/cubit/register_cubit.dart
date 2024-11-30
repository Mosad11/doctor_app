import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/screens/register/data/model/register_request_body_model.dart';
import 'package:doctor_app/features/screens/register/data/repo/register_repo.dart';
import 'package:doctor_app/features/screens/register/logic/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  void register(RegisterRequestBodyModel registerRequestBodyModel) async {
    emit(const RegisterState.loading());
    final response = await _registerRepo.register(registerRequestBodyModel);
    response.when(success: (registerResponse) {
      emit(RegisterState.success(registerResponse));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
