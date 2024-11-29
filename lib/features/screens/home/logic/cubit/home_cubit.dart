import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/screens/home/logic/states/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
