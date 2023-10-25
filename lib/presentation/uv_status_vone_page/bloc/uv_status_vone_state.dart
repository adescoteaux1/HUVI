// ignore_for_file: must_be_immutable

part of 'uv_status_vone_bloc.dart';

/// Represents the state of UvStatusVone in the application.
class UvStatusVoneState extends Equatable {
  UvStatusVoneState({this.uvStatusVoneModelObj});

  UvStatusVoneModel? uvStatusVoneModelObj;

  @override
  List<Object?> get props => [
        uvStatusVoneModelObj,
      ];
  UvStatusVoneState copyWith({UvStatusVoneModel? uvStatusVoneModelObj}) {
    return UvStatusVoneState(
      uvStatusVoneModelObj: uvStatusVoneModelObj ?? this.uvStatusVoneModelObj,
    );
  }
}
