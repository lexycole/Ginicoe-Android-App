import 'package:flutter/material.dart';
import '../user_dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/constants.dart';

class HealthCareForm extends StatelessWidget {

  const HealthCareForm({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>  const HomeDashboard())
              );
            }
          ),
        backgroundColor: const Color(0xFF1976D2),
        title: const Text('Health Care Form'),
      ),
      body: Center(
        child: SingleChildScrollView (
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Row(
                children: <Widget>[
                  Text("HealthCare",
                    style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "First Name",
                    hintText: "first name",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                height: 15,
              ),
                   TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Last Name",
                            hintText: "last name",
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                              fillColor: Colors.white,
                              filled: true),
                          ),
                const SizedBox(
                  height: 15,
                  ),
                Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Text("What is the Physical Building Number of your work site?")
                            ]
                          ),
                        )
                      ],
                  ),
                    TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "What is the Physical Building Number of your work site?",
                    hintText: "What is the Physical Building Number of your work site?",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                height: 15,
              ), 
                  Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Text("What is the Physical Apartment, Office, Suite, Number of your work site?")
                            ]
                          ),
                        )
                      ],
                  ),
                    TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "What is the Physical Apartment, Office, Suite, Number of your work site?",
                        hintText: "What is the Physical Apartment, Office, Suite, Number of your work site?",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                  const SizedBox(
                height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: "What U.S. State do you work from?",
                    hintText: "What U.S. State do you work from?",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
               const SizedBox(
                height: 15,
              ), 
                  Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Text("What U.S. City, Town, Village, Hamlet, Parish, etc. do you work from?")
                            ]
                          ),
                        )
                      ],
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "What U.S. City, Town, Village, Hamlet, Parish, etc. do you work from?",
                      hintText: "What U.S. City, Town, Village, Hamlet, Parish, etc. do you work from?",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    const SizedBox(
                height: 15,
              ), 
                Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: const [
                            Text("What is a good telephone number to reach you at?")
                          ]
                        ),
                      )
                    ],
                ),
                    TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "What is a good telephone number to reach you at?",
                        hintText: "What is a good telephone number to reach you at?",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
              const SizedBox(
                height: 15,
              ), 
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "What is your work email address?",
                      hintText: "What is your work email address?",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                ),
                const SizedBox(
                height: 15,
              ), 
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "What is your work email address?",
                      hintText: "What is your work email address?",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                ),
                const SizedBox(
                height: 15,
              ), 
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "What is your Name of the Covered Entity?",
                    hintText: "What is your Name of the Covered Entity?",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                         fillColor: Colors.white,
                         filled: true),
                ),
                 const SizedBox(
                height: 15,
              ),
                Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Text("We apologize that your HealthCare Covered Entity may not yet be listed with us. Please complete this form and one of our HealthCare specialists will contact you within 48 hours to listen to your needs. Thank you for selecting Ginicoe")
                            ]
                          ),
                        )
                      ],
                  ),
                  const SizedBox( 
                    height: 15,
                   ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(color:Colors.red, 
                              borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                              child: 
                              const Text(
                                "Save and Return Later", 
                                style: TextStyle(color: Colors.white)
                              ),
                            ),
                          ),
                        ],
                    ),
                    InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(color: Colors.green, 
                              borderRadius: BorderRadius.circular(20)),
                              
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                              child: 
                              const Text(
                                "Save and Continue", 
                                style: TextStyle(color: Colors.white)
                              ),
                            ),
                          ),
                        ],
                    ),
                  const SizedBox(  
                    height: 15,
                  ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}