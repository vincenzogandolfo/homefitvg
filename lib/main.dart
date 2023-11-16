import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:homefitvg/pages/first_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Schermo sempre in Verticale
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeFit VG',
      home: AnimatedSplashScreen(
        splash: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'images/splash.png',
          ),
        ),
        nextScreen: const FirstPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.orangeAccent,
        duration: 2000,
      ),
    );
  }
}
