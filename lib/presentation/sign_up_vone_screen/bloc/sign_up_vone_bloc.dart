import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/sign_up_vone_screen/models/sign_up_vone_model.dart';
part 'sign_up_vone_event.dart';
part 'sign_up_vone_state.dart';

/// A bloc that manages the state of a SignUpVone according to the event that is dispatched to it.
class SignUpVoneBloc extends Bloc<SignUpVoneEvent, SignUpVoneState> {
  SignUpVoneBloc(SignUpVoneState initialState) : super(initialState) {
    on<SignUpVoneInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpVoneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignUpVoneInitialEvent event,
    Emitter<SignUpVoneState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
