import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/recommendation_vone_screen/models/recommendation_vone_model.dart';
part 'recommendation_vone_event.dart';
part 'recommendation_vone_state.dart';

/// A bloc that manages the state of a RecommendationVone according to the event that is dispatched to it.
class RecommendationVoneBloc
    extends Bloc<RecommendationVoneEvent, RecommendationVoneState> {
  RecommendationVoneBloc(RecommendationVoneState initialState)
      : super(initialState) {
    on<RecommendationVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RecommendationVoneInitialEvent event,
    Emitter<RecommendationVoneState> emit,
  ) async {}
}
