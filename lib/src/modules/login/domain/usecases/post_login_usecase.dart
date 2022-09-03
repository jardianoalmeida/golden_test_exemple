import 'package:dartz/dartz.dart';

import '../../../../shared/domain/errors/errors.dart';
import '../repositories/login_repository.dart';

abstract class PostLoginUsecase {
  Future<Either<Failure, void>> call(String username, String password);
}

class PostLoginUsecaseImpl implements PostLoginUsecase {
  final LoginRepository _repository;

  PostLoginUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, void>> call(String username, String password) {
    return _repository.login(username, password);
  }
}
