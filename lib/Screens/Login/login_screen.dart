import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/Screens/Login/components/body.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

@override
// Widget build(BuildContext context) {
//     return Provider<Example>(
//       create: (_) => Example(),
//       // we use `builder` to obtain a new `BuildContext` that has access to the provider
//       builder: (context) {
//         // No longer throws
//         return Text(context.watch<Example>()),
//       }
//     ),
//   }

Widget build(BuildContext context) {
    return const Scaffold(
      body: 
        Body(),
      );
    }
}