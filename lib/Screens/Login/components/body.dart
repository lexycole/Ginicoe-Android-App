import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/Screens/Signup/signup_screen.dart';
import 'package:ginicoe_responsive_app/components/rounded_button.dart';
import 'package:ginicoe_responsive_app/components/rounded_input_field.dart';
import 'package:ginicoe_responsive_app/components/rounded_phone_num_field.dart';
import 'package:ginicoe_responsive_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ginicoe_responsive_app/Screens/Signup/components/or_divider.dart';
import 'package:ginicoe_responsive_app/Screens/Login/components/background.dart';
import 'package:ginicoe_responsive_app/components/already_have_an_account_acheck.dart';
import 'package:ginicoe_responsive_app/Screens/User_Dashboard/user_dashboard.dart';

class Body extends StatefulWidget {
  const Body({ Key? key, }) : super(key: key);

  @override
  State<Body> createState() => _BodyState(); 
}

class _BodyState extends State<Body> {

  bool _secureText = true;

   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                 setState(() {
                  _secureText = !_secureText;
                });
              },
            ),
            RoundedButton( 
              text: "LOGIN",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeDashboard(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Signup();
                    },
                  ),
                );
              },
            ),
             const OrDivider(),
              RoundedPhoneNumField(
                onChanged: (value) {},
              ),
          ],
        ),
      )
    );
  }
}
