import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: primaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}


// // 01. Parent of already have an account check
// class AlreadyHaveAnAccountCheck extends StatefulWidget {

//   const AlreadyHaveAnAccountCheck({ Key? key, required Null Function() press,
// }) : super(key: key);

//   @override _AlreadyHaveAnAccountCheckState createState() => _AlreadyHaveAnAccountCheckState();
// }
  
//   class _AlreadyHaveAnAccountCheckState extends State<AlreadyHaveAnAccountCheck> {
//     bool _login = false;

//     void _handleTapLoginChanged(bool newValue) {
//       setState(() {
//         _login = newValue;
//       });
//     }
  
//   @override
//   Widget build(BuildContext context) {
//    return SizedBox(
//       child: SubAlreadyHaveAnAccountCheck(
//         login: _login,
//         onChanged: _handleTapLoginChanged,
//       )
//     );
//   }
//   }
//     // Sub class of the already have an account check
// class SubAlreadyHaveAnAccountCheck extends StatelessWidget {

//   const SubAlreadyHaveAnAccountCheck({
//     Key? key,
//     this.login = true,
//     required this.onChanged,
//   }) : super(key: key);

//   final bool login;
//   final ValueChanged<bool> onChanged;

//   void _handleTap() {
//       onChanged(!login);
//     }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           login ? "Don’t have an Account ? " : "Already have an Account ? ",
//           style: const TextStyle(color: kPrimaryColor),
//         ),
//         GestureDetector(
//           onTap: _handleTap,
//           child: Text(
//             login ? "Sign Up" : "Sign In",
//             style: const TextStyle(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

