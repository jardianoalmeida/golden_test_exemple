import 'package:dio/dio.dart';

import '../../domain/errors/errors.dart';
import '../../infra/datasources/login_datasource.dart';

class LoginDatasourceImpl implements LoginDatasource {
  final Dio _dio;

  LoginDatasourceImpl(this._dio);
  @override
  Future<void> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 5));

    var response = await _dio.post('/login', data: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      return;
    }

    throw LoginError();
  }
}
