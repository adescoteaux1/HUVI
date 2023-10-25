import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/uv_status_vone_container_screen/models/uv_status_vone_container_model.dart';
part 'uv_status_vone_container_event.dart';
part 'uv_status_vone_container_state.dart';

/// A bloc that manages the state of a UvStatusVoneContainer according to the event that is dispatched to it.
class UvStatusVoneContainerBloc
    extends Bloc<UvStatusVoneContainerEvent, UvStatusVoneContainerState> {
  UvStatusVoneContainerBloc(UvStatusVoneContainerState initialState)
      : super(initialState) {
    on<UvStatusVoneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UvStatusVoneContainerInitialEvent event,
    Emitter<UvStatusVoneContainerState> emit,
  ) async {}
}
