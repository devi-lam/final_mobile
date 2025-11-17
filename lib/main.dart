import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; 

// PAGES
import 'onboarding_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'user_beranda.dart';
// import 'dashboard_admin.dart';

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
      title: 'LaporKi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF005AC2),
        useMaterial3: true,
      ),

      // ROUTES
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (_) => const OnboardingPage(),
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
        '/dashboardUser': (_) => const UserDashboard(),
        // '/dashboardAdmin': (_) => const DashboardAdmin(),
      },
    );
  }
}





