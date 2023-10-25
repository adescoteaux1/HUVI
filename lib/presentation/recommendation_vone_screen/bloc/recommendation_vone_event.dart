// ignore_for_file: must_be_immutable

part of 'recommendation_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RecommendationVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RecommendationVoneEvent extends Equatable {}

/// Event that is dispatched when the RecommendationVone widget is first created.
class RecommendationVoneInitialEvent extends RecommendationVoneEvent {
  @override
  List<Object?> get props => [];
}
