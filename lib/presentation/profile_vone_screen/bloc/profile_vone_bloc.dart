import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/profile_vone_screen/models/profile_vone_model.dart';
part 'profile_vone_event.dart';
part 'profile_vone_state.dart';

/// A bloc that manages the state of a ProfileVone according to the event that is dispatched to it.
class ProfileVoneBloc extends Bloc<ProfileVoneEvent, ProfileVoneState> {
  ProfileVoneBloc(ProfileVoneState initialState) : super(initialState) {
    on<ProfileVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileVoneInitialEvent event,
    Emitter<ProfileVoneState> emit,
  ) async {
    emit(state.copyWith(
      buttononeController: TextEditingController(),
    ));
  }
}
