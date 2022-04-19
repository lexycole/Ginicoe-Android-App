import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/Screens/Login/login_screen.dart';
import 'package:ginicoe_responsive_app/Screens/Pricing/pricing.dart';
import 'package:ginicoe_responsive_app/Screens/Splashscreen/splash_screen.dart';
import 'package:ginicoe_responsive_app/Screens/Signup/signup_screen.dart';
import 'package:provider/provider.dart';
import 'Screens/User_Dashboard/user_dashboard.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  // This widget is the ;nm,jkl a,a-m of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Welcome(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ginicoe App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/welcome': (context) =>  Welcome(),
        '/signup': (context) => const Signup(),
        '/login': (context) => const Login(),
        '/home-dashboard': (context) => const HomeDashboard(),
        '/pricing': (context) => const Pricing(),
        }
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Success',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}