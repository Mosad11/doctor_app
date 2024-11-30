import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_services/api_services.dart';
import 'package:doctor_app/core/networking/dio_factory/dio_factory.dart';
import 'package:doctor_app/features/screens/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/screens/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/screens/register/data/repo/register_repo.dart';
import 'package:doctor_app/features/screens/register/logic/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
