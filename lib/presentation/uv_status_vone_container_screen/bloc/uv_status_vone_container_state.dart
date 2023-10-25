// ignore_for_file: must_be_immutable

part of 'uv_status_vone_container_bloc.dart';

/// Represents the state of UvStatusVoneContainer in the application.
class UvStatusVoneContainerState extends Equatable {
  UvStatusVoneContainerState({this.uvStatusVoneContainerModelObj});

  UvStatusVoneContainerModel? uvStatusVoneContainerModelObj;

  @override
  List<Object?> get props => [
        uvStatusVoneContainerModelObj,
      ];
  UvStatusVoneContainerState copyWith(
      {UvStatusVoneContainerModel? uvStatusVoneContainerModelObj}) {
    return UvStatusVoneContainerState(
      uvStatusVoneContainerModelObj:
          uvStatusVoneContainerModelObj ?? this.uvStatusVoneContainerModelObj,
    );
  }
}
