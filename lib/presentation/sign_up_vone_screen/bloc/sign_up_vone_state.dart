// ignore_for_file: must_be_immutable

part of 'sign_up_vone_bloc.dart';

/// Represents the state of SignUpVone in the application.
class SignUpVoneState extends Equatable {
  SignUpVoneState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpVoneModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpVoneModel? signUpVoneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        signUpVoneModelObj,
      ];
  SignUpVoneState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpVoneModel? signUpVoneModelObj,
  }) {
    return SignUpVoneState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpVoneModelObj: signUpVoneModelObj ?? this.signUpVoneModelObj,
    );
  }
}
