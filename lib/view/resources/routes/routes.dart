import 'package:attendece_management_system/view/resources/custom_widgets/change_password_page.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/setting_feature.dart';
import 'package:attendece_management_system/view/screens/admin_panel/add_student_page.dart';
import 'package:attendece_management_system/view/screens/admin_panel/add_teacher_page.dart';
import 'package:attendece_management_system/view/screens/admin_panel/admin_home.dart';
import 'package:attendece_management_system/view/screens/admin_panel/admin_profile.dart';
import 'package:attendece_management_system/view/screens/admin_panel/teacher_attendance.dart';
import 'package:attendece_management_system/view/screens/login_screen.dart';
import 'package:attendece_management_system/view/screens/parent_panel/parent_home.dart';
import 'package:attendece_management_system/view/screens/parent_panel/parent_profile.dart';
import 'package:attendece_management_system/view/screens/splash_screen.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_home.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_profile.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/student_attendance.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/student_list_page.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/teacher_home.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/teacher_list_page.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/teacher_profile.dart';
import 'package:flutter/material.dart';

class Routes {
  //splash
  static const String splash = '/';

  //login
  static const String loginScreen = '/loginScreen';

  //user type
  static const String studentPanel = '/studentPanel';
  static const String adminPanel = '/adminPanel';
  static const String teacherPanel = '/teacherPanel';
  static const String parentPanel = '/parentPanel';

  //student panel routes
  static const String studentProfile = '/studentProfile';
  static const String studentsList = '/studentsList';
  static const String teachersList = '/teachersList';
  static const String settings = '/settings';
  static const String logOut = '/logOut';
  static const String changePassword = '/changePassword';

  //parent panel routes
  static const String parentProfile = '/parentProfile';

  //teacher panel routes
  static const String teacherProfile = '/parentProfile';
  static const String studentAttendance = '/studentAttendance';

  //admin panel routes
  static const String adminProfile = '/adminProfile';
  static const String addTeacher = '/addTeacher';
  static const String addStudent = '/addStudent';
  static const String teacherAttendance = '/teacherAttendance';
}

class AppRouter {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/loginScreen':

        //user type
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/studentPanel':
        return MaterialPageRoute(builder: (_) => const StudentHome());
      case '/adminPanel':
        return MaterialPageRoute(builder: (_) => const AdminHome());
      case '/teacherPanel':
        return MaterialPageRoute(builder: (_) => TeacherHome());
      case '/parentPanel':
        return MaterialPageRoute(builder: (_) => const ParentHome());

      //student
      case '/studentProfile':
        return MaterialPageRoute(builder: (_) => const StudentProfile());
      case '/studentsList':
        return MaterialPageRoute(builder: (_) => const StudentListPage());
      case '/teacherList':
        return MaterialPageRoute(builder: (_) => const TeacherListPage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingFeature());
      case '/logOut':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/changePassword':
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());

      //parent
      case '/parentProfile':
        return MaterialPageRoute(builder: (_) => const ParentProfile());

      //teacher
      case '/teacherProfile':
        return MaterialPageRoute(builder: (_) => const TeacherProfile());
      case '/studentAttendance':
        return MaterialPageRoute(builder: (_) => const StudentAttendance());

      //admin
      case '/adminProfile':
        return MaterialPageRoute(builder: (_) => const AdminProfile());
      case '/addTeacher':
        return MaterialPageRoute(builder: (_) => const AddTeacherPage());
      case '/addStudent':
        return MaterialPageRoute(builder: (_) => const AddStudentPage());
      case '/teacherAttendance':
        return MaterialPageRoute(builder: (_) => const TeacherAttendance());

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
