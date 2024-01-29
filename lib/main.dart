import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
import 'package:sportify/screen/auth/splash/splash_screen.dart';
import 'package:sportify/screen/select_your_sports/sport_select_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: "Rubik",
              useMaterial3: true,
            ),
            initialRoute: '/splash',
            routes: {
              '/splash': (context) => const SplashScreen(),
              '/login': (context) => const LoginScreen(),
              '/sportscreen': (context) => const SportSelectScreen(),
            });
      },
    );
  }
}
