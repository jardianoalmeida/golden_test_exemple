import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Modular.to.pushReplacementNamed('/login'),
    );

    // WidgetsBinding.instance.addPersistentFrameCallback((_) {

    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff175EA8),
      body: Center(
        child: SvgPicture.asset('assets/icon/logo.svg'),
      ),
    );
  }
}
