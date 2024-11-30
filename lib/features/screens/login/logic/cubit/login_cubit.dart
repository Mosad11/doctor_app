import 'package:doctor_app/features/screens/login/data/model/login_request_body_model.dart';
import 'package:doctor_app/features/screens/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/screens/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void login(LoginRequestBodyModel loginRequestBodyModel) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBodyModel);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
