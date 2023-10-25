// ignore_for_file: must_be_immutable

part of 'uv_status_vone_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UvStatusVoneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UvStatusVoneContainerEvent extends Equatable {}

/// Event that is dispatched when the UvStatusVoneContainer widget is first created.
class UvStatusVoneContainerInitialEvent extends UvStatusVoneContainerEvent {
  @override
  List<Object?> get props => [];
}
