import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:info_hub_project/screens/onboarding_screen.dart';

void main() async {
  //these ensure the splash screen works (icon that appears when app is launched)
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 10));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //Everything begins here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'infoHub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //first page to run after splash screen is initialized
      home: const OnBoardingScreen(),
    );
  }
}
