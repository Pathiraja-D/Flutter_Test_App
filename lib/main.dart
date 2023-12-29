import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newapp/config/app_routes.dart';
import 'package:newapp/firebase_options.dart';
import 'package:newapp/styles/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark),
      initialRoute: AppRoutes.test,
      routes: AppRoutes.pages,
    );
  }
}
