import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'pages/home_page.dart';

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
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeFit VG',
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'images/splash.png',
        ),
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.orangeAccent,
        duration: 2000,
      ),
    );
  }
}
