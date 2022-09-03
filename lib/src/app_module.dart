import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/presentation/login_module.dart';
import 'modules/splash/presentation/pages/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute('/login', module: LoginModule()),
      ];
}
