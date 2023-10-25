import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/login_vtwo_screen/models/login_vtwo_model.dart';
part 'login_vtwo_event.dart';
part 'login_vtwo_state.dart';

/// A bloc that manages the state of a LoginVtwo according to the event that is dispatched to it.
class LoginVtwoBloc extends Bloc<LoginVtwoEvent, LoginVtwoState> {
  LoginVtwoBloc(LoginVtwoState initialState) : super(initialState) {
    on<LoginVtwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginVtwoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    LoginVtwoInitialEvent event,
    Emitter<LoginVtwoState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
