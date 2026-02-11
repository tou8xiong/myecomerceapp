import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myecomerceapp/presentation/auth/page/button_state.dart';

class BottonStateCubit extends Cubit<ButtonState> {
  BottonStateCubit() : super(ButtonInittialState());

  Future<void> execute({dynamic params}) async {
    emit(ButtonLoadingState());
    try {
      emit(ButtonSuccessState());
    } catch (e) {
      emit(ButtonErrorState());
    }
  }
}
