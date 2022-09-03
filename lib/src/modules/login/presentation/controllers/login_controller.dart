import '../../domain/usecases/post_login_usecase.dart';
import 'package:flutter/material.dart';

import '../states/login_state.dart';

class LoginController extends ValueNotifier<LoginState> {
  final PostLoginUsecaseImpl _usecase;
  LoginController(this._usecase) : super(const LoginState.success());

  Future<void> login(String username, String password) async {
    value = const LoginState.loading();
    var result = await _usecase.call(username, password);

    value = result.fold(
      (error) => const LoginState.error(),
      (success) => const LoginState.success(),
    );
  }
}
