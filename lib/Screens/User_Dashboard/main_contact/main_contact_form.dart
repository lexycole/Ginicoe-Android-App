  import 'package:flutter/material.dart';
  import '../user_dashboard.dart';
  import 'package:google_fonts/google_fonts.dart';
  import '../widgets/constants.dart';

class MainContactForm extends StatelessWidget {
  const MainContactForm({Key? key}) : super(key: key);

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
        title: const Text('Main Contact Form'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text("Main Contact Form",
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
                    labelText: "Middle Name",
                    hintText: "middle name",
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
                TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Telephone Number",
                    hintText: "0000000000",
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
                      labelText: "Toll Free Number",
                      hintText: "toll free number",
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
                        labelText: "Fax Number",
                        hintText: "00-00-00",
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
                        labelText: "Mobile / Cell Phone",
                        hintText: "mobile / cell phone",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                            fillColor: Colors.white,
                            filled: true
                            ),
                      ), 
                    const SizedBox(
                      height: 15,
                    ),
                     TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Personal Email address",
                            hintText: "example@mail.com",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                borderRadius: BorderRadius.circular(20)),
                                fillColor: Colors.white,
                                filled: true
                                ),
                        ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Federal Tax ID",
                            hintText: "federal tax ID",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                borderRadius: BorderRadius.circular(20)),
                                fillColor: Colors.white,
                                filled: true
                                ),
                        ),
                    const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Work Email Address",
                            hintText: "workmail@mail.com",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                borderRadius: BorderRadius.circular(20)),
                                fillColor: Colors.white,
                                filled: true
                                ),
                        ),    
                        const SizedBox(
                          height: 15,
                        ),         
                      TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Entity's Website",
                                hintText: "https://example.com",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                    fillColor: Colors.white,
                                    filled: true
                                    ),
                        ),
                          const SizedBox( height: 15,
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
            ] ,
          ),
        ),
      ),
    ),
    );
  }
}