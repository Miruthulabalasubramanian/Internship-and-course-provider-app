import 'package:flutter/material.dart';
import 'screens/login_page.dart' as login_screen;
import 'screens/home_page.dart' as home_screen;
import 'screens/student_dashboard.dart'; // Import Student Dashboard
import 'screens/course_page.dart';
import 'screens/intern_page.dart';
import 'screens/course_provider_home.dart'; // Import Course Provider Home

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Platform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: login_screen.LoginPage(), // Initial home page
      routes: {
        '/home': (context) => home_screen.HomePage(),
        '/dashboard': (context) => StudentDashboard(), // Dashboard route
        '/courses': (context) => CoursePage(), // Course page route
        '/internships': (context) => InternPage(), // Intern page route
        '/courseProviderHome': (context) =>
            CourseProviderHome(), // Course Provider Home route
        '/login': (context) =>
            login_screen.LoginPage(), // Login page route (for logout)
      },
    );
  }
}
