import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/uv_status_vone_page/models/uv_status_vone_model.dart';
part 'uv_status_vone_event.dart';
part 'uv_status_vone_state.dart';

/// A bloc that manages the state of a UvStatusVone according to the event that is dispatched to it.
class UvStatusVoneBloc extends Bloc<UvStatusVoneEvent, UvStatusVoneState> {
  UvStatusVoneBloc(UvStatusVoneState initialState) : super(initialState) {
    on<UvStatusVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UvStatusVoneInitialEvent event,
    Emitter<UvStatusVoneState> emit,
  ) async {}
}
