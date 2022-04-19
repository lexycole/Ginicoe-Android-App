  import 'package:flutter/material.dart';
  import '../user_dashboard.dart';
  import 'package:google_fonts/google_fonts.dart';
  import '../widgets/constants.dart';
  import '../widgets/date_picker.dart';
  import '../widgets/style.dart';

  void setState(Null Function() param0) { }
  
  class MerchantsForm extends StatefulWidget {
    const MerchantsForm({Key? key}) : super(key: key);

    @override
    MerchantsFormState createState() => MerchantsFormState();
  }

class MerchantsFormState extends State<MerchantsForm> {
 final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
    String? value;
    String dropdownValue = 'One';
    
    String? selectedValue;
   final _dropdownFormKey = GlobalKey<FormState>();

    int _radioValue = 1;
    void _handleRadioValueChange(int value) {
      setState(() {
        _radioValue = value;
        switch (_radioValue) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
        }
      });    
    }
   
   final DateTime _selectedDate = DateTime.now();
   final TextEditingController _controller = TextEditingController();

    bool isChecked = false;


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
        title: const Text('Merchants Form'),
      ),
     body: Center(
        child: SingleChildScrollView (
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400,),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Row(
                children: [
                  Text("Merchant Information",
                    style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
               TextField(
                decoration: InputDecoration(
                    labelText: "Owner/Partner",
                    hintText: "Owner/Partner",
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
                          labelText: "Social Security Number",
                          hintText: "Social Security Number",
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
                            labelText: "Title in Bussines",
                            hintText: "Title in Bussines",
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
                            hintText: "Telephone Number",
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
                            labelText: "Ownership Percentage",
                            hintText: "Ownership Percentage",
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
                                  Text("DOB")
                                ]
                              ),
                            )
                          ],
                      ),
                      const PickDate(),
                    const SizedBox(
                      height: 15,
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Home Address",
                            hintText: "Home Address",
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
                            labelText: "City",
                            hintText: "City",
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
                            labelText: "State",
                            hintText: "State",
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
                              labelText: "Zip",
                              hintText: "Zip",
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  Text("Structure of Business")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                          validator: (value) => value == null ? "Structure of Business" : null,
                          dropdownColor: kPrimaryColor,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          hint: const Text('Structure of Business'),
                          items: structureOfBusinessItems
                        ),
                       const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Are you a home based business?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is Number of Employee at physical location?")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                          validator: (value) => value == null ? "1-50/" : null,
                          dropdownColor: kPrimaryColor,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          hint: const Text('1-50/'),
                          items: employeeItems
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("What Merchant Level Category are you")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                    child:Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ), 
                                    ),
                                    Expanded(
                                    child:Radio(value : 2, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ), 
                                    ), 
                                  ],
                                ),
                                 Row(
                                  children: const [
                                    Expanded(
                                    child: Text(
                                  "Level 1: Merchants processing over 6 million card transactions per year", 
                                ),
                                    ),
                                  Expanded(
                                    child: Text(
                                  "Level 2: Merchants processing 1 to 6 million transactions per year. What is This?", 
                                ), 
                                    ), 
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                    child:Radio(value : 2, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ), 
                                    ),
                                    Expanded(
                                    child:Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ), 
                                    ), 
                                  ],
                                ),
                                 Row(
                                  children: const [
                                    Expanded(
                                    child: Text(
                                  "Level 3: Merchants handling 20,000 to 1 million transactions per year. What is This?", 
                                  
                                ),
                                    ),
                                  Expanded(
                                    child: Text(
                                  "Level 4: Merchants handling fewer than 20,000 transactions per year. What is This?", 
                                 
                                ), 
                                    ), 
                                  ],
                                ),
                         
                       const SizedBox(
                        height: 15,
                      ),
                      Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is the Name of your merchant bank or Acquirer?")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                          validator: (value) => value == null ? "What is the Name of your merchant bank or Acquirer?" : null,
                          dropdownColor: kPrimaryColor,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          hint: const Text('What is the Name of your merchant bank or Acquirer?'),
                        items: nameOfAcquirerItems
                        ),
                      const SizedBox(
                      height: 15,
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Account manager's FN",
                            hintText: "City",
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
                            labelText: "Account manager’s physical address",
                            hintText: "Account manager’s physical address",
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
                            labelText: "City",
                            hintText: "City",
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
                            labelText: "State",
                            hintText: "State",
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
                            labelText: "Postal code",
                            hintText: "Postal code",
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
                            hintText: "Telephone Number",
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
                            labelText: "Account Manager Email Address",
                            hintText: "Account Manager Email Address",
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
                                  Text("What Industry best describes your business?")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                          validator: (value) => value == null ? "What Industry best describes your business?" : null,
                          dropdownColor: kPrimaryColor,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          hint: const Text('What Industry best describes your business?'),
                        items: industryBusinessItems
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "What is your EIN Number",
                              hintText: "What is your EIN Number",
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
                                labelText: "What is your Primary line of Business?",
                                hintText: "What is your Primary line of Business?",
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
                              labelText: "What is your 2017 NAICS Code?",
                              hintText: "What is your 2017 NAICS Code?",
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
                                  Text("What is the your worldwide omnichannel estimated number of POS terminals, card readers, kiosks, or Access device as defined in 18 USC § 1029(e)(1)")
                                ]
                              ),
                            )
                          ],
                      ),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "What is the your worldwide omnichannel estimated number of POS terminals, card readers, kiosks, or Access device as defined in 18 USC § 1029(e)(1)",
                              hintText: "What is the your worldwide omnichannel estimated number of POS terminals, card readers, kiosks, or Access device as defined in 18 USC § 1029(e)(1)",
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
                                  Text("What is the Estimated number of POS")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                          validator: (value) => value == null ? "What is the Estimated number of POS" : null,
                          dropdownColor: kPrimaryColor,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          hint: const Text('What is the Estimated number of POS'),
                        items: estimatedPOSItems
                        ),

                        const SizedBox(
                        height: 15,
                      ),
                       Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("Who is your POS Manufactuer?")
                                ]
                              ),
                            )
                          ],
                      ),
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              filled: true,
                              fillColor: Colors.white,
                          ),
                            validator: (value) => value == null ? "Who is your POS Manufactuer?" : null,
                            dropdownColor: kPrimaryColor,
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            hint: const Text('Who is your POS Manufactuer?'),
                          items: posManufactuerItems
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Have you experienced an account data compromise?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                       const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("if yes , When?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                            const PickDate(),
                        const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("iDo you use point of sale terminal hardware and software, or a PCI DSS Certified Internet Gateway Provider, supplied by a merchant service provider, and do you confirm that you do not store cardholder data?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                        Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                        const SizedBox(
                        height: 15,
                      ),
                      Row(children: [
                          Flexible(
                              child: Column(
                                children: const [
                                  Text("If No, then what third party software company / vendor did you purchase your POS application from?")
                                 ]
                                 ),
                             )
                          ],
                        ),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "If No, then what third party software company / vendor did you purchase your POS application from?",
                                hintText: "If No, then what third party software company / vendor did you purchase your POS application from?",
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
                                labelText: "What is the name of the third party software?",
                                hintText: "What is the name of the third party software?",
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
                                labelText: "What version number?",
                                hintText: "What version number?",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                                  fillColor: Colors.white,
                                  filled: true),
                          ),

                      const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Do your transactions process through any other third parties, web hosting companies or gateways?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "If yes, with whom?",
                                hintText: "If yes, with whom?",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                                  fillColor: Colors.white,
                                  filled: true),
                          ),                      
                      const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Do you or your vendor receive, pass, transmit or store the full cardholder number, electronically?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("If yes, where is the card data stored?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value : isChecked, 
                                        onChanged : (value) {
                                          setState(() {
                                             isChecked = value!;
                                          });
                                        }
                                      ),         
                                    const Text(
                                      "Merchant",
                                    ),
                                  ],
                                ),
                                  Checkbox(
                                            value : isChecked, 
                                              onChanged : (value) {
                                                setState(() {
                                                   isChecked = value!;
                                                });
                                              }
                                            ), 
                                Text(
                                  "Third Party Only", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                          const SizedBox(
                            height: 15,
                          ),
                        Row( children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value : isChecked, 
                                        onChanged : (value) {
                                          setState(() {
                                             isChecked = value!;
                                          });
                                        }
                                      ),         
                                    const Text(
                                      " Merchant & Third Party",
                                    ),
                                  ],
                                ),
                                  Checkbox(
                                            value : isChecked, 
                                              onChanged : (value) {
                                                setState(() {
                                                   isChecked = value!;
                                                });
                                              }
                                            ), 
                                Text(
                                  "GAA Export Only", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                          const SizedBox(
                        height: 15,
                      ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Are you or your vendor PCI/DSS compliant?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                              Row( children: [
                                Row(
                                  children: [
                                    Radio(value : 1, groupValue : _radioValue, 
                                        onChanged : (value) {
                                          setState(() {});
                                        }
                                      ),         
                                    const Text(
                                      "Yes",
                                    ),
                                  ],
                                ),
                              Radio(value : 2, groupValue : _radioValue, 
                                  onChanged : (value) {
                                  setState(() { });
                                    }
                                  ),
                                Text(
                                  "No", 
                                  style: TextStyle(color: active)
                                ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("What is the name of your Qualified Security Assessor?")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                        TextField(
                          obscureText: true,
                            decoration: InputDecoration(
                                labelText: "What is the name of your Qualified Security Assessor?",
                                hintText: "What is the name of your Qualified Security Assessor?",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                                  fillColor: Colors.white,
                                  filled: true),
                          ),
                            const SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Date of Compliance")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                          const PickDate(),
                             const SizedBox(
                              height: 15,
                          ),
                        Row(children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Text("Date of last scan")
                                      ]
                                    ),
                                  )
                                ],
                            ),
                          const PickDate(),
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
        // Submit Button               
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
            ],
          ),
        ),
      ),
      ),
    );
  }
}

// Twin Personality Items
List<DropdownMenuItem<String>> get structureOfBusinessItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("C-Corp"),value: "C-Corp"),
    const DropdownMenuItem(child: Text("Contractorship"),value: "Contractorship"),
    const DropdownMenuItem(child: Text("Cooperative"),value: "Cooperative"),
    const DropdownMenuItem(child: Text("DBA"),value: "DBA"),
    const DropdownMenuItem(child: Text("LLC"),value: "LLC"),
    const DropdownMenuItem(child: Text("S-Corp"),value: "S-Corp"),
    const DropdownMenuItem(child: Text("PC"),value: "PC"),
    const DropdownMenuItem(child: Text("Sole Proprietorship"),value: "Sole Proprietorship"),
  ];
  return menuItems;
}

// Number of Employee at physical Locations Items
List<DropdownMenuItem<String>> get employeeItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("1-50/"),value: "1-50/"),
    const DropdownMenuItem(child: Text("1-50"),value: "1-50"),
    const DropdownMenuItem(child: Text("50-100"),value: "50-100"),
    const DropdownMenuItem(child: Text("100-150"),value: "100-150"),
    const DropdownMenuItem(child: Text("500-1000"),value: "500-1000"),
    const DropdownMenuItem(child: Text("1000-5000"),value: "1000-5000"),
    const DropdownMenuItem(child: Text("5000-10000"),value: "5000-10000"),
    const DropdownMenuItem(child: Text("10000+"),value: "10000+"),
  ];
  return menuItems;
}

// nameOfAcquirerItems
List<DropdownMenuItem<String>> get nameOfAcquirerItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Apogee Payment Systems"),value: "Apogee Payment Systems"),
    const DropdownMenuItem(child: Text("Approval Payment Solutions"),value: "Approval Payment Solutions"),
    const DropdownMenuItem(child: Text("Bank of American Merchant Services (Fiserv)"),value: "Bank of American Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("Bank of Hawaii"),value: "Bank of Hawaii"),
    const DropdownMenuItem(child: Text("BankCard Services"),value: "BankCard Services"),
    const DropdownMenuItem(child: Text("BB&T Merchant Services (Fiserv)"),value: "BB&T Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("BBVA Compass (Fiserv)"),value: "BBVA Compass (Fiserv)"),
    const DropdownMenuItem(child: Text("C&H Financial Services"),value: "C&H Financial Services"),
    const DropdownMenuItem(child: Text("Cayan, formally TSYS, now Global Payments"),value: "Cayan, formally TSYS, now Global Payments"),
    const DropdownMenuItem(child: Text("ChasePaymnet Tech"),value: "ChasePaymnet Tech"),
    const DropdownMenuItem(child: Text("Citi Merchant Sevices (Fiserv)"),value: "Citi Merchant Sevices (Fiserv)"),
    const DropdownMenuItem(child: Text("Citizen Bank (FIS)"),value: "Citizen Bank (FIS)"),
    const DropdownMenuItem(child: Text("Clearent"),value: "Clearent"),
    const DropdownMenuItem(child: Text("Commerce Bancshares"),value: "Commerce Bancshares"),
    const DropdownMenuItem(child: Text("Commercial Bank of California"),value: "Commercial Bank of California"),
    const DropdownMenuItem(child: Text("Complete Merchant Solutions"),value: "Complete Merchant Solutions"),
    const DropdownMenuItem(child: Text("Elavon"),value: "Elavon"),
    const DropdownMenuItem(child: Text("Electronic Merchant Systems"),value: "Electronic Merchant Systems"),
    const DropdownMenuItem(child: Text("Electronic Payments"),value: "Electronic Payments"),
    const DropdownMenuItem(child: Text("Epicor Software"),value: "Epicor Software"),
    const DropdownMenuItem(child: Text("eVance Processing"),value: "eVance Processing"),
    const DropdownMenuItem(child: Text("EVO Payments International"),value: "EVO Payments International"),
    const DropdownMenuItem(child: Text("First American Payment Systems"),value: "First American Payment Systems"),
    const DropdownMenuItem(child: Text("First Citizens Bank"),value: "First Citizens Bank"),
    const DropdownMenuItem(child: Text("First Data, now Fiserv"),value: "First Data, now Fiserv"),
    const DropdownMenuItem(child: Text("First Hawaiian Bank"),value: "First Hawaiian Bank"),
    const DropdownMenuItem(child: Text("Fulton Merchant Card Services"),value: "Fulton Merchant Card Services"),
    const DropdownMenuItem(child: Text("Global Paymnets"),value: "Global Paymnets"),
    const DropdownMenuItem(child: Text("Gravity Payments"),value: "Gravity Payments"),
    const DropdownMenuItem(child: Text("Haertlanmd, now Global Payments"),value: "10000+"),
    const DropdownMenuItem(child: Text("l3 Verticals"),value: "l3 Verticals"),
    const DropdownMenuItem(child: Text("Integrity Payment Systems"),value: "Integrity Payment Systems"),
    const DropdownMenuItem(child: Text("Intrix Technology"),value: "Intrix Technology"),
    const DropdownMenuItem(child: Text("Intuit - Quickbooks (Owned by Fiserv)"),value: "Intuit - Quickbooks (Owned by Fiserv)"),
    const DropdownMenuItem(child: Text("iPayments"),value: "iPayments"),
    const DropdownMenuItem(child: Text("JetPay"),value: "JetPay"),
    const DropdownMenuItem(child: Text("KeyBank (Fiserv) "),value: "KeyBank (Fiserv) "),
    const DropdownMenuItem(child: Text("M&T Bank (Fiserv)"),value: "M&T Bank (Fiserv)"),
    const DropdownMenuItem(child: Text("Mainstream Merchant Services"),value: "Mainstream Merchant Services"),
    const DropdownMenuItem(child: Text("Merchant e-Solutions"),value: "Merchant e-Solutions"),
    const DropdownMenuItem(child: Text("Merrick Bank"),value: "Merrick Bank"),
    const DropdownMenuItem(child: Text("MLS Direct Network"),value: "MLS Direct Network"),
    const DropdownMenuItem(child: Text("NCMIC Finance Corporation"),value: "NCMIC Finance Corporation"),
    const DropdownMenuItem(child: Text("Newtek Merchant Solutions"),value: "Newtek Merchant Solutions"),
    const DropdownMenuItem(child: Text("North American Bancard"),value: "North American Bancard"),
    const DropdownMenuItem(child: Text("North American Payment Solutions"),value: "North American Payment Solutions"),
    const DropdownMenuItem(child: Text("Paragon Payment Solutions"),value: "Paragon Payment Solutions"),
    const DropdownMenuItem(child: Text("Paya"),value: "Paya"),
    const DropdownMenuItem(child: Text("PaySafe"),value: "PaySafe"),
    const DropdownMenuItem(child: Text("PNC Merchant Services (Fiserv)"),value: "PNC Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("Priority Payment Systems"),value: "Priority Payment Systems"),
    const DropdownMenuItem(child: Text("Redwood Merchant Sevices"),value: "Redwood Merchant Sevices"),
    const DropdownMenuItem(child: Text("Retriever Medical Dental Payments"),value: "Retriever Medical Dental Payments"),
    const DropdownMenuItem(child: Text("Santender Merchant Services (Fiserv)"),value: "Santender Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("Security BankCard Center"),value: "Security BankCard Center"),
    const DropdownMenuItem(child: Text("Shift4 Payments"),value: "Shift4 Payments"),
    const DropdownMenuItem(child: Text("SunTrust Merchant Services (Fiserv)"),value: "SunTrust Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("TD Bank (Fiserv)"),value: "TD Bank (Fiserv"),
    const DropdownMenuItem(child: Text("Transfund Merchant Services"),value: "Transfund Merchant Services"),
    const DropdownMenuItem(child: Text("TSYS, now Global Payments"),value: "TSYS, now Global Payments"),
    const DropdownMenuItem(child: Text("Umpqua Bank"),value: "Umpqua Bank"),
    const DropdownMenuItem(child: Text("UMS Banking"),value: "UMS Banking"),
    const DropdownMenuItem(child: Text("United Merchant Services"),value: "United Merchant Services"),
    const DropdownMenuItem(child: Text("Vantiv, now FIS"),value: "Vantiv, now FIS"),
    const DropdownMenuItem(child: Text("Wells Fargo Merchant Services (Fiserv)"),value: "Wells Fargo Merchant Services (Fiserv)"),
    const DropdownMenuItem(child: Text("WorldPay, now FIS"),value: "WorldPay, now FIS"),




  ];
  return menuItems;
}

// IndustryBusinessItems
List<DropdownMenuItem<String>> get industryBusinessItems {
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Accommodation and Food Services"),value: "Accommodation and Food Services"),
    const DropdownMenuItem(child: Text("Administrative and Support and Waste Management and Services"),value: "Administrative and Support and Waste Management and Services"),
    const DropdownMenuItem(child: Text("Agriculture"),value: "Agriculture"),
    const DropdownMenuItem(child: Text("Arts, Entertainment and Recreation"),value: "Arts, Entertainment and Recreation"),
    const DropdownMenuItem(child: Text("Communication"),value: "Communication"),
    const DropdownMenuItem(child: Text("Electric"),value: "Electric"),
    const DropdownMenuItem(child: Text("Gas "),value: "Gas"),
    const DropdownMenuItem(child: Text("Solar"),value: "Solar"),
    const DropdownMenuItem(child: Text("water and sewage"),value: "water and sewage"),
    const DropdownMenuItem(child: Text("wind"),value: "wind"),
    const DropdownMenuItem(child: Text("Construction"),value: "Construction"),
    const DropdownMenuItem(child: Text("Educational Services"),value: "Educational Services"),
    const DropdownMenuItem(child: Text("Finanace and Insurance"),value: "Finanace and Insurance"),
    const DropdownMenuItem(child: Text("Fishing"),value: "Fishing"),
    const DropdownMenuItem(child: Text("Forestry"),value: "Forestry"),
    const DropdownMenuItem(child: Text("Health Care and Social Assistance"),value: "Health Care and Social Assistance"),
    const DropdownMenuItem(child: Text("Hunting"),value: "Hunting"),
    const DropdownMenuItem(child: Text("Information"),value: "Information"),
    const DropdownMenuItem(child: Text("Management of Companies (holding companies)"),value: "Management of Companies (holding companies)"),
    const DropdownMenuItem(child: Text("Manufacturing"),value: "Manufacturing"),
    const DropdownMenuItem(child: Text("Mining"),value: "Mining"),
    const DropdownMenuItem(child: Text("Other Services"),value: "Other Services"),
    const DropdownMenuItem(child: Text("Professional, Scientific, and Technical Services"),value: "Professional, Scientific, and Technical Services"),
    const DropdownMenuItem(child: Text("Real-estate and Rental and Leasing"),value: "Real-estate and Rental and Leasing"),
    const DropdownMenuItem(child: Text("Retail Trade"),value: "Retail Trade"),
    const DropdownMenuItem(child: Text("Transportation and Warehousing"),value: "Transportation and Warehousing"),
    const DropdownMenuItem(child: Text("Travel"),value: "Travel"),
    const DropdownMenuItem(child: Text("Utilities"),value: "Utilities"),
    const DropdownMenuItem(child: Text("Utility Company"),value: "Utility Company"),
    const DropdownMenuItem(child: Text("Wholesale Trade"),value: "Wholesale Trade"),
  ];
  return menuItems;
}

// posItems
List<DropdownMenuItem<String>> get estimatedPOSItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("1 - 100"),value:"1 - 100"),
    const DropdownMenuItem(child: Text("100 - 500"),value:"100 - 500"),
    const DropdownMenuItem(child: Text("500 - 1000"),value: "500 - 1000"),
    const DropdownMenuItem(child: Text("5000 - 1,000,000"),value: "5000 - 1,000,000"),
    const DropdownMenuItem(child: Text("1,000,000 - 5,000,000"),value: "1,000,000 - 5,000,000"),
    const DropdownMenuItem(child: Text("5,000,000>"),value: "5,000,000>"),
  ];
  return menuItems;
}

// POS Manufactuer
List<DropdownMenuItem<String>> get posManufactuerItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Altarmetrics"),value:"Altarmetrics"),
    const DropdownMenuItem(child: Text("Cantaloupe, Inc"),value:"Cantaloupe, Inc"),
    const DropdownMenuItem(child: Text("Casio"),value: "Casio"),
    const DropdownMenuItem(child: Text("CenterEdge Software"),value: "CenterEdge Software"),
    const DropdownMenuItem(child: Text("Cherry (company)"),value: "Cherry (company)"),
    const DropdownMenuItem(child: Text("Clover Network"),value: "Clover Network"),
    const DropdownMenuItem(child: Text("Cybertill"),value: "Cybertill"),
    const DropdownMenuItem(child: Text("Digital Research"),value: "Digital Research"),
    const DropdownMenuItem(child: Text("EFTPOS"),value: "EFTPOS"),
    const DropdownMenuItem(child: Text("Epos Now"),value: "Epos Now"),
    const DropdownMenuItem(child: Text("Epson"),value: "Epson"),
    const DropdownMenuItem(child: Text("Erply"),value: "Erply"),
    const DropdownMenuItem(child: Text("ERPNext"),value: "ERPNext"),
    const DropdownMenuItem(child: Text("Fujitsu"),value: "Fujitsu"),
    const DropdownMenuItem(child: Text("Gilbarco Veeder-Root"),value: "Gilbarco Veeder-Root"),
    const DropdownMenuItem(child: Text("Hisense"),value: "Hisense"),
    const DropdownMenuItem(child: Text("Hypercom"),value: "Hypercom"),
    const DropdownMenuItem(child: Text("I lOVE Velvet"),value: "I lOVE Velvet"),
    const DropdownMenuItem(child: Text("IBM"),value: "IBM"),
    const DropdownMenuItem(child: Text("Imonggo"),value: "Imonggo"),
    const DropdownMenuItem(child: Text("Ingenico>"),value: "Ingenico"),
    const DropdownMenuItem(child: Text("Integrated System Inc."),value: "Integrated System Inc."),
    const DropdownMenuItem(child: Text("Itautec"),value: "Itautec"),
    const DropdownMenuItem(child: Text("Kounta (software company)"),value: "Kounta (software company)"),
    const DropdownMenuItem(child: Text("Lightspeed (company)"),value: "Lightspeed (company)"),
    const DropdownMenuItem(child: Text("Microinvest"),value: "Microinvest>"),
    const DropdownMenuItem(child: Text("Micro Systems"),value: "Micro Systems"),
    const DropdownMenuItem(child: Text("MYOB (company)"),value: "MYOB (company)"),
    const DropdownMenuItem(child: Text("NCR Corporation"),value: "NCR Corporation"),
    const DropdownMenuItem(child: Text("NEC"),value: "NEC"),
    const DropdownMenuItem(child: Text("Nexgo"),value: "Nexgo"),
    const DropdownMenuItem(child: Text("Openbravo"),value: "Openbravo"),
    const DropdownMenuItem(child: Text("Panasonic"),value: "Panasonic"),
    const DropdownMenuItem(child: Text("PAX Technology"),value: "PAX Technology"),
    const DropdownMenuItem(child: Text("POS Solutions"),value: "POS Solutions"),
    const DropdownMenuItem(child: Text("Radiant Systems"),value: "Radiant Systems"),
    const DropdownMenuItem(child: Text("Retalix"),value: "Retalix"),
    const DropdownMenuItem(child: Text("Revel Systems"),value: "Revel Systems"),
    const DropdownMenuItem(child: Text("Samsung Electronics"),value: "Samsung Electronics"),
    const DropdownMenuItem(child: Text("Sharp Corporation"),value: "Sharp Corporation"),
    const DropdownMenuItem(child: Text("Shopify"),value: "Shopify"),
    const DropdownMenuItem(child: Text("ShopKeep"),value: "ShopKeep"),
    const DropdownMenuItem(child: Text("Simpay (company) "),value: "Simpay (company) "),
    const DropdownMenuItem(child: Text("Square, Inc"),value: "Square, Inc"),
    const DropdownMenuItem(child: Text("Squirrel Systems"),value: "Squirrel Systems"),
    const DropdownMenuItem(child: Text("Star Micronics"),value: "Star Micronics"),
    const DropdownMenuItem(child: Text("Talech"),value: "Talech"),
    const DropdownMenuItem(child: Text("Ticketer"),value: "Ticketer"),
    const DropdownMenuItem(child: Text("Tiller Systems (software)"),value: "Tiller Systems (software)"),
    const DropdownMenuItem(child: Text("Toast, Inc"),value: "Toast, Inc"),
    const DropdownMenuItem(child: Text("Toshiba"),value: "Toshiba"),
    const DropdownMenuItem(child: Text("TouchBistro Inc."),value: "TouchBistro Inc."),
    const DropdownMenuItem(child: Text("TRANZ 330"),value: "TRANZ 330"),
    const DropdownMenuItem(child: Text("US BackCard Services Inc"),value: "US BackCard Services Inc"),
    const DropdownMenuItem(child: Text("Vend (software)"),value: "Vend (software)"),
    const DropdownMenuItem(child: Text("Verifone"),value: "Verifone"),
    const DropdownMenuItem(child: Text("Wincor Nixdorf"),value: "Wincor Nixdorf"),
    
  ];
  return menuItems;
}