import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myecomerceapp/presentation/auth/page/button_state.dart';
import 'package:myecomerceapp/presentation/splash/bloc/botton_state_cubit.dart';

class BasicReactiveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottonStateCubit, ButtonState>(
      builder: (context, state) {
        if (state is ButtonLoadingState) {
          return CircularProgressIndicator();
        } else if (state is ButtonSuccessState) {
          return Text("Success");
        } else if (state is ButtonErrorState) {
          return Text("Error");
        }
      },
    );
  }
}
