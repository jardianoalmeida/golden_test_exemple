import 'package:dartz/dartz.dart';

import '../../../../shared/domain/errors/errors.dart';

abstract class LoginRepository {
  Future<Either<Failure, void>> login(String username, String password);
}
