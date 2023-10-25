// ignore_for_file: must_be_immutable

part of 'login_vtwo_bloc.dart';

/// Represents the state of LoginVtwo in the application.
class LoginVtwoState extends Equatable {
  LoginVtwoState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginVtwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginVtwoModel? loginVtwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginVtwoModelObj,
      ];
  LoginVtwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginVtwoModel? loginVtwoModelObj,
  }) {
    return LoginVtwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginVtwoModelObj: loginVtwoModelObj ?? this.loginVtwoModelObj,
    );
  }
}
