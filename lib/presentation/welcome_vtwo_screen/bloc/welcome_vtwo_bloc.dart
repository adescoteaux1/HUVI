import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/welcome_vtwo_screen/models/welcome_vtwo_model.dart';
part 'welcome_vtwo_event.dart';
part 'welcome_vtwo_state.dart';

/// A bloc that manages the state of a WelcomeVtwo according to the event that is dispatched to it.
class WelcomeVtwoBloc extends Bloc<WelcomeVtwoEvent, WelcomeVtwoState> {
  WelcomeVtwoBloc(WelcomeVtwoState initialState) : super(initialState) {
    on<WelcomeVtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeVtwoInitialEvent event,
    Emitter<WelcomeVtwoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginVtwoScreen,
      );
    });
  }
}
