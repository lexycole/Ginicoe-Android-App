  import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';
  import 'package:ginicoe_responsive_app/Screens/Pricing/pricing.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/bank/bank_form.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/consumers/consumers_form.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/education/education_forms.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/facial_upload/facial_upload.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/government/government_form.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/healthcare/healthcare_form.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/main_contact/main_contact_form.dart';
  import 'package:ginicoe_responsive_app/Screens/User_Dashboard/merchants/merchants_form.dart';
  import 'package:ginicoe_responsive_app/Screens/Signup/signup_screen.dart';

  import './widgets/constants.dart';
  import './widgets/storage_details.dart';

  void main() {
    runApp(const HomeDashboard());
  }

class HomeDashboard extends StatelessWidget {
    const HomeDashboard({Key? key}) : super(key: key);
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Panel',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null
        ),

        // theme: ThemeData.light().copyWith(
        //   scaffoldBackgroundColor: Colors.white,
        //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //       .apply(bodyColor: const Color.fromRGBO(255, 255, 255, 1)),
        //   // canvasColor: secondaryColor,
        //   canvasColor: Colors.white,
        // ),
        home: const UserDashboard(),
      );
    }
  }

  class UserDashboard extends StatelessWidget {
    const UserDashboard({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          // elevation:Targetplatform.android ? 5.0:0.0
        ),
        drawer: Drawer(
            // child: SingleChildScrollView(
            // padding: EdgeInsets.all(defaultPadding),
            child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Ginicoe Corp"),
                accountEmail: Text("ginicoe@mail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("GA")
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("A")
                  )
                ]
              ),
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //   ),
              //   child: Text('Drawer Header'),
              // ),
              ListTile(
                title: 
                const Text(
                  "Main Contact",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(
                  Icons.contact_phone,
                    color: primaryColor,
                    size: 24.0,),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>  const MainContactForm())
                    );
                  },
              ),
              ListTile(
                title: 
                 const Text(
            "Consumers",
            style: TextStyle(
              color: primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
                trailing: const Icon(Icons.people_alt_outlined,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  const ConsumersForm()),
                    );
                }
              ),
              ListTile(
                title: 
                const Text(
            "Bank",
            style: TextStyle(
              color: primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
                trailing: const Icon(Icons.account_balance,
                    color:primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  const BankForm())
                    );
                }
              ),
              ListTile(
                title: 
                const Text(
                  "Education",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(Icons.perm_contact_calendar,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  const EducationForm())
                    );
                  }
              ),
              ListTile(
                title: 
                 const Text(
            "Government",
            style: TextStyle(
              color: primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
                trailing: const Icon(Icons.gavel,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>  const GovernmentForm())
                    );
                }
              ),
              ListTile(
                 title:const Text(
            "Health Care",
            style: TextStyle(
              color: primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
                trailing: const Icon(Icons.health_and_safety_outlined,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  const HealthCareForm())
                    );
                }
              ),
              ListTile(
                title: 
                const Text(
                  "Merchants",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(Icons.point_of_sale,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  const MerchantsForm())
                    );
                }
              ),
              ListTile(
                title: 
                const Text(
                  "Facial Upload",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(Icons.upload_file,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>  const FacialUpload())
                    );
                  }
              ),
              const Divider(),
              ListTile(
                title: 
                const Text(
                  "Pricing",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(Icons.price_change,
                    color: primaryColor,
                    size: 24.0,),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Pricing())
                  );
                }
              ),
              const Divider(),
              ListTile(
                title: 
                 const Text(
                      "Log Out",
                     style: TextStyle(
                     color: primaryColor,
                     fontSize: 14,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
                trailing: const Icon(Icons.logout),
                onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>  Signup())
                    );
                }
              ),
            ],
          ),
        // ),
        ),
        body: const Center(
            child: StarageDetails(),
          )
        );
    }
  }