import 'package:attendece_management_system/view/screens/login_screen.dart';
import 'package:attendece_management_system/view/screens/splash_screen.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_home.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String loginScreen = '/loginScreen';
  static const String studentPanel = '/studentPanel';
  static const String adminPanel = '/adminPanel';
}

class AppRouter {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/loginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/studentPanel':
        return MaterialPageRoute(builder: (_) => const StudentHome());

      default:
        return MaterialPageRoute(builder: (_) => const DefaultRoute());
    }
  }
}

class DefaultRoute extends StatelessWidget {
  const DefaultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Invalid Route"),
      ),
    );
  }
}
