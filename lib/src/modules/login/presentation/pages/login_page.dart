 
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/widget/buttom/buttom_variant.dart';
import '../../../../shared/widget/buttom/buttom_widget.dart';
import '../../../../styles/typography.dart';
import '../../../../tokens/app_tokens.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff175EA8),
      body: ValueListenableBuilder(
        builder: (_, __, ___) {
          return controller.value.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: () => _success(),
            error: () => const Center(child: Text('Error')),
          );
        },
        valueListenable: controller,
      ),
    );
  }

  Widget _success() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 1),
        SvgPicture.asset('assets/icon/logo.svg'),
        const Spacer(flex: 1),
        Container(
          height: MediaQuery.of(context).size.height * .55,
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              Container(
                width: AppTokens.spacingXl,
                height: AppTokens.blurSm,
                decoration: BoxDecoration(
                  color: AppTokens.colorNeutralDark,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 24.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'E-mail ou CPF/CNPJ',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Senha',
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    'Esqueci minha senha',
                    style: TextVariantFont.bodyLigth.getFont.copyWith(
                      color: AppTokens.colorChartBlueDark,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ButtomWidget(
                  'Entrar',
                  onPressed: () => null,
                  // controller.login(
                  //   faker.internet.userName(),
                  //   faker.internet.password(),
                  // ),
                ),
              ),
              const Spacer(flex: 1),
              Row(
                children: const [
                  Expanded(child: Divider(thickness: 2.0)),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('acesso rápido'),
                  ),
                  Expanded(child: Divider(thickness: 2.0)),
                ],
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ButtomWidget(
                  'Entrar sem conta',
                  onPressed: () {},
                  style: ButtomVariant.second,
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ButtomWidget(
                  'Criar conta',
                  onPressed: () {},
                  style: ButtomVariant.tertiary,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ],
    );
  }
}
