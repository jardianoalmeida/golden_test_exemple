import 'package:dartz/dartz.dart';

import '../../../../shared/domain/errors/errors.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_datasource.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDatasource _datasource;

  LoginRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, void>> login(String username, String password) async {
    try {
      var result = await _datasource.login(username, password);
      return Right(result);
    } catch (e) {
      return Left(LoginError());
    }
  }
}
