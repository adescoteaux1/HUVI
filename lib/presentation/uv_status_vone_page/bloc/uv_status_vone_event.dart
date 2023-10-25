// ignore_for_file: must_be_immutable

part of 'uv_status_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UvStatusVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UvStatusVoneEvent extends Equatable {}

/// Event that is dispatched when the UvStatusVone widget is first created.
class UvStatusVoneInitialEvent extends UvStatusVoneEvent {
  @override
  List<Object?> get props => [];
}
