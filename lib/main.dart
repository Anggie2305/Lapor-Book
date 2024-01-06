import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/firebase_options.dart';
import 'package:flutter_application_2/pages/splashpage.dart';
import 'package:flutter_application_2/pages/AddFormPage.dart';
import 'package:flutter_application_2/pages/dashboard/DashboardPage.dart';
import 'package:flutter_application_2/pages/DetailPage.dart';
import 'package:flutter_application_2/pages/LoginPage.dart';
import 'package:flutter_application_2/pages/RegisterPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    title: 'Lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      '/add': (context) => AddFormPage(),
      '/detail': (context) => DetailPage(),
    },
  ));
}
