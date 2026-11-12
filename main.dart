
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/student_home.dart';
import 'screens/staff_dashboard.dart';
import 'screens/motivation_screen.dart';

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
      title: 'Motiv8',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: const Color(0xFF0A4A6B),
        scaffoldBackgroundColor: const Color(0xFFE8F4F8),
        fontFamily: 'Segoe UI',

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Color(0xFF0A4A6B),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0A4A6B),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 24,
            ),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),

      home: const SplashScreen(),

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const SplashScreen(),
            );

          case '/login':
            return MaterialPageRoute(
              builder: (_) => const LoginScreen(),
            );

          case '/register':
            return MaterialPageRoute(
              builder: (_) => const RegisterScreen(),
            );

          case '/student':
            final userData =
            settings.arguments as Map<String, dynamic>?;

            return MaterialPageRoute(
              builder: (_) => StudentHome(
                student: userData ?? {},
              ),
            );

          case '/staff':
            return MaterialPageRoute(
              builder: (_) => const StaffDashboard(),
            );

          case '/motivation':
            final userName =
                settings.arguments as String? ?? 'User';

            return MaterialPageRoute(
              builder: (_) => MotivationScreen(
                studentName: userName,
              ),
            );

          default:
            return MaterialPageRoute(
              builder: (_) => const SplashScreen(),
            );
        }
      },
    );
  }
}
