// ignore_for_file: must_be_immutable

part of 'welcome_vtwo_bloc.dart';

/// Represents the state of WelcomeVtwo in the application.
class WelcomeVtwoState extends Equatable {
  WelcomeVtwoState({this.welcomeVtwoModelObj});

  WelcomeVtwoModel? welcomeVtwoModelObj;

  @override
  List<Object?> get props => [
        welcomeVtwoModelObj,
      ];
  WelcomeVtwoState copyWith({WelcomeVtwoModel? welcomeVtwoModelObj}) {
    return WelcomeVtwoState(
      welcomeVtwoModelObj: welcomeVtwoModelObj ?? this.welcomeVtwoModelObj,
    );
  }
}
