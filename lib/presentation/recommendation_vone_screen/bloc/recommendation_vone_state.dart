// ignore_for_file: must_be_immutable

part of 'recommendation_vone_bloc.dart';

/// Represents the state of RecommendationVone in the application.
class RecommendationVoneState extends Equatable {
  RecommendationVoneState({this.recommendationVoneModelObj});

  RecommendationVoneModel? recommendationVoneModelObj;

  @override
  List<Object?> get props => [
        recommendationVoneModelObj,
      ];
  RecommendationVoneState copyWith(
      {RecommendationVoneModel? recommendationVoneModelObj}) {
    return RecommendationVoneState(
      recommendationVoneModelObj:
          recommendationVoneModelObj ?? this.recommendationVoneModelObj,
    );
  }
}
