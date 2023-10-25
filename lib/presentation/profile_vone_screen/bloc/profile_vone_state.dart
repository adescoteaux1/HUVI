// ignore_for_file: must_be_immutable

part of 'profile_vone_bloc.dart';

/// Represents the state of ProfileVone in the application.
class ProfileVoneState extends Equatable {
  ProfileVoneState({
    this.buttononeController,
    this.profileVoneModelObj,
  });

  TextEditingController? buttononeController;

  ProfileVoneModel? profileVoneModelObj;

  @override
  List<Object?> get props => [
        buttononeController,
        profileVoneModelObj,
      ];
  ProfileVoneState copyWith({
    TextEditingController? buttononeController,
    ProfileVoneModel? profileVoneModelObj,
  }) {
    return ProfileVoneState(
      buttononeController: buttononeController ?? this.buttononeController,
      profileVoneModelObj: profileVoneModelObj ?? this.profileVoneModelObj,
    );
  }
}
