// ignore_for_file: must_be_immutable

part of 'welcome_vtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeVtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeVtwoEvent extends Equatable {}

/// Event that is dispatched when the WelcomeVtwo widget is first created.
class WelcomeVtwoInitialEvent extends WelcomeVtwoEvent {
  @override
  List<Object?> get props => [];
}
