import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:ginicoe_responsive_app/Screens/Welcome/welcome_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/logo_foreground.png', height: 250, width: 200),
            const SizedBox(height: 30),
              if(Platform.isIOS)
                const CupertinoActivityIndicator(
                  radius: 30,
              )
          else
          const CircularProgressIndicator(
            color: Colors.blue,
            )
          ]
        )
      )
    );
  }
}