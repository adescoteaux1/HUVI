// ignore_for_file: must_be_immutable

part of 'profile_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileVoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileVone widget is first created.
class ProfileVoneInitialEvent extends ProfileVoneEvent {
  @override
  List<Object?> get props => [];
}
