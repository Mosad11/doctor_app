import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/src/bloc_observer.dart';
import 'package:doctor_app/src/root/app_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = const SimpleBlocObserver();
  runApp(AppRoot(appRouter: AppRouter()));
}
