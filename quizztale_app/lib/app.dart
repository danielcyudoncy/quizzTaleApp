import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quizztale_app/bindings/bindings.dart';
import 'package:quizztale_app/routes/routes.dart';
import 'package:quizztale_app/screens/game_screen.dart';
import 'package:quizztale_app/screens/game_status.dart';
import 'package:quizztale_app/screens/splash_screen.dart';
import 'package:quizztale_app/screens/welcome_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuizzTale',
      initialBinding: MyBindings(),
      getPages: [
        GetPage(name: Routes.welcomeScreenRoute, page: () => const WelcomeScreen()),
         GetPage(name: Routes.gameStatusRoute, page: () => const GameStatus()),
          GetPage(name: Routes.gameScreenRoute, page: () => const GameScreen()),
      ],
      home: const SplashScreen(),
    );
  }
}