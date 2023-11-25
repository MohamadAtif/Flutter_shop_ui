import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:resturaunts_menu/config.dart';
import 'package:resturaunts_menu/screens/homepageanimation.dart';
import 'package:resturaunts_menu/screens/shoppage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePageanimation(),
  ));
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [myPrimaryColor, Color(0xff005D87)],
      ),
      childWidget: SizedBox(
        height: 150,
        child: Image.asset("images/restaurant.png"),
      ),
      duration: const Duration(seconds: 2),
      animationDuration: const Duration(seconds: 2),
      onAnimationEnd: () => debugPrint("Welcome to Shebeen Menus"),
      nextScreen: const ShopPage(),
    );
  }
}
