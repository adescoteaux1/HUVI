// ignore_for_file: must_be_immutable

part of 'sign_up_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpVoneEvent extends Equatable {}

/// Event that is dispatched when the SignUpVone widget is first created.
class SignUpVoneInitialEvent extends SignUpVoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpVoneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
