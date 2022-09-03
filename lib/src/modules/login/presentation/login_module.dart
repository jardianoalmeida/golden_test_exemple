import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../domain/usecases/post_login_usecase.dart';
import '../external/datasources/login_datasource_impl.dart';
import '../infra/repositories/login_repository_impl.dart';
import 'controllers/login_controller.dart';
import 'pages/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(((i) => Dio())),
        Bind(((i) => LoginDatasourceImpl(i()))),
        Bind(((i) => LoginRepositoryImpl(i()))),
        Bind(((i) => PostLoginUsecaseImpl(i()))),
        Bind(((i) => LoginController(i()))),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const LoginPage(),
        ),
      ];
}
