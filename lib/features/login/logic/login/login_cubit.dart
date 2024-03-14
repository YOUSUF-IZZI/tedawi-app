import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:tedawi/features/login/data/models/response.dart';
import 'package:tedawi/features/login/data/repo/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(LoginInitial());
  final LoginRepository loginRepository;

  // * Controller for login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  signIn() async {
    emit(LoginLoading());
    final response = await loginRepository.signIn(
        email: emailController.text, password: passwordController.text);
    response.fold(
      (failure) => emit(LoginFailure(failure.errorMessage)),
      (response) => emit(LoginSuccess(response)),
    );
  }
}
