import 'package:box_hero/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _imgPath = 'assets/images/splash_img1.png';

  @override
  void initState() {
    super.initState();
    changeImage();
  }

  void changeImage() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _imgPath = 'assets/images/splash_img2.png';
    });

    await Future.delayed(const Duration(milliseconds: 300));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const LoginScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          _imgPath,
          scale: 4.0,
        ),
      ),
    );
  }
}
