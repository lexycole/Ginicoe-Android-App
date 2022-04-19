import 'package:flutter/material.dart';
import '../user_dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/style.dart';
import '../widgets/constants.dart';


void setState(Null Function() param0) {
    }

class GovernmentForm extends StatefulWidget {
  const GovernmentForm({Key? key}) : super(key: key);

  @override
  GovernmentFormState createState() => GovernmentFormState();
}

class GovernmentFormState extends State<GovernmentForm> {

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

    TextEditingController textarea = TextEditingController();
    final TextEditingController _textController = TextEditingController();


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
        title: const Text('Government Form'),
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
                  Text("Government Forms",
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
                  Row(
                        children: [
                          Flexible(
                            child: Column(
                              children: const [
                                Text("What is Your Title?")
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
                        validator: (value) => value == null ? "What is Your Title?" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('What is Your Title?'),
                        items: titleItems
                      ),
                       const SizedBox(
                    height: 15,
                    ),
                     Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is your Office/Agencey Physical Bulding Number?")
                                ]
                              ),
                            )
                          ],
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "What is your Office/Agencey Physical Bulding Number?",
                            hintText: "What is your Office/Agencey Physical Bulding Number?",
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
                                  Text("What is your Office / Agency Physical Street Name?")
                                ]
                              ),
                            )
                          ],
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "What is your Office / Agency Physical Street Name?",
                            hintText: "Office / Agency Physical Street Name?",
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
                                  Text("What is your Office / Agency Physical Building Number? For Puerto Rico and U.S. Virgin Islands only")
                                ]
                              ),
                            )
                          ],
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: " Office/Agencey Physical Urbanization Number?",
                            hintText: "Office/Agencey Physical Urbanization Number?",
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
                                  Text("What is your Office/Agencey Physical Country")
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
                        validator: (value) => value == null ? "What is your Office/Agencey Physical Country" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('What is your Office/Agencey Physical Country'),
                        items: physicalCountryOneItems
                      ),
                    const SizedBox(
                      height: 15,
                      ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is your Office/Agency Physical State")
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
                        validator: (value) => value == null ? " Office/Agencey Physical State" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('Office/Agencey Physical State'),
                        items: physicalStateItems
                      ),
                    const SizedBox(
                        height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is your Office / Agency Physical County?")
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
                        validator: (value) => value == null ? " Office/Agencey Physical Country" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('Office/Agencey Physical Country'),
                        items: physicalCountryTwoItems
                      ),
                       const SizedBox(
                        height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is your Office / Agency Physical City?")
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
                        validator: (value) => value == null ? " Office/Agencey Physical City" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('Office/Agencey Physical City'),
                        items: physicalCityItems
                      ),
                    const SizedBox(
                        height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: const [
                                  Text("What is your Office / Agency Physical Zip Code?")
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
                        validator: (value) => value == null ? "Office / Agency Physical Zip Code?" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('Office / Agency Physical Zip Code?'),
                        items: physicalZipCodeItems
                      ),
                    const SizedBox(
                        height: 15,
                        ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Federal Tax ID",
                            hintText: "Federal Tax ID",
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
                                  Text("What is your Office / Agency Primary Telephone Number?")
                                ]
                              ),
                            )
                          ],
                      ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Office / Agency Primary Telephone Number?",
                            hintText: "Office / Agency Primary Telephone Number?",
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
                                  Text("What is your Office / Agency Alternate Telephone Number?")
                                ]
                              ),
                            )
                          ],
                      ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Office / Agency Alternate Telephone Number?",
                          hintText: "Office / Agency Alternate Telephone Number?",
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
                              Text("Is Your Agency")
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
                                      "Federal",
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
                                        "State", 
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
                            "County",
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
                            " City", 
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
                              "Village",
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
                          "Township Parish", 
                          style: TextStyle(color: active)
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 15,
                        ),
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
                              "Parish",
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
                                Text("What Sector Best Describes Your Agency?")
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
                        validator: (value) => value == null ? "What Sector Best Describes Your Agency?" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('What Sector Best Describes Your Agency?'),
                        items: sectorItems
                      ),
                     const SizedBox(
                        height: 15,
                        ),
                    //   TextField(
                    //   controller: _textController,
                    //   onChanged: onItemChanged,
                    //   decoration: InputDecoration(
                    //       hintText: "Search here...",
                    //       border: OutlineInputBorder(
                    //         borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    //         borderRadius: BorderRadius.circular(20)),
                    //         fillColor: Colors.white,
                    //         filled: true),
                    //     ),
                    //     Column(
                    //         children: newDataList.map((data) {
                    //         return ListTile(
                    //               title: Text(data),
                    //               onTap: () => (data),);
                    //           }).toList(),
                    //     ),
                    // const SizedBox(
                    //    height: 15,
                    //     ),
                     Row(
                        children: [
                          Flexible(
                            child: Column(
                              children: const [
                                Text("What is the Name of the Agency that You Represent?")
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
                        validator: (value) => value == null ? "What is the Name of the Agency that You Represent?" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('What is the Name of the Agency that You Represent?'),
                        items: agencyNameItems
                      ),
                     const SizedBox(
                       height: 15,
                        ),
                    Row(children: [
                          Flexible(
                            child: Column(
                              children: const [
                                Text("Do You Have Budgeting / Procurement Authority?")
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
                              Text("If Yes, then what is Your Approximate Amount of Budgeting Authority?")
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
                        validator: (value) => value == null ? "If Yes, then what is Your Approximate Amount of Budgeting Authority?" : null,
                        dropdownColor: kPrimaryColor,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        hint: const Text('If Yes, then what is Your Approximate Amount of Budgeting Authority?'),
                        items: approximateAmountItems
                      ),
                const SizedBox(
                            height: 15,
                            ),
                  Row(
                  children: [
                    Flexible(
                      child: Column(
                        children: const [
                          Text("Describe in Detail How Ginicoe Can Help You")
                          ]
                        ),
                      )
                    ],
                ),
                TextField(
                  controller: textarea,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: const InputDecoration( 
                      hintText: "Describe in Detail How Ginicoe Can Help You",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),

                      ),
                      
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "What is your work email address?",
                      hintText: "What is your work email address?",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                // CTA Button
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

// Dropdrown Items
  // Title Items
List<DropdownMenuItem<String>> get titleItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Director"),value: "Director"),
    const DropdownMenuItem(child: Text("Chief"),value: "Chief"),
    const DropdownMenuItem(child: Text("Section Head"),value: "Section Head"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
  ];
  return menuItems;
  }

// physicalCountryItems One
List<DropdownMenuItem<String>> get physicalCountryOneItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }
  // physicalCountryItems Two
List<DropdownMenuItem<String>> get physicalCountryTwoItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }
// Physical State
List<DropdownMenuItem<String>> get physicalStateItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }

// Physical Country
List<DropdownMenuItem<String>> get physicalCountryItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }

  // Physical City
  List<DropdownMenuItem<String>> get physicalCityItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }

  // Physical Zip Code
    List<DropdownMenuItem<String>> get physicalZipCodeItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LIB"),value: "LIB"),
    const DropdownMenuItem(child: Text("U.S. States"),value: "U.S. States"),
  ];
  return menuItems;
  }

  // sectorItems
List<DropdownMenuItem<String>> get sectorItems {
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Border Surveillance"),value: "Border Surveillance"),
    const DropdownMenuItem(child: Text("Chemical Sector"),value: "Chemical Sector"),
    const DropdownMenuItem(child: Text("Commercial Facilities Sector"),value: "Commercial Facilities Sector"),
    const DropdownMenuItem(child: Text("Commercial Sector"),value: "Commercial Sector"),
    const DropdownMenuItem(child: Text("Critical Manufacturing Sector"),value: "Critical Manufacturing Sector"),
    const DropdownMenuItem(child: Text("Dams Sector"),value: "Dams Sector"),
    const DropdownMenuItem(child: Text("Defense Industrial Base Sector"),value: "Defense Industrial Base Sector"),
    const DropdownMenuItem(child: Text("Emergency Services Sector"),value: "Emergency Services Sector"),
    const DropdownMenuItem(child: Text("Energy Sector"),value: "Energy Sector"),
    const DropdownMenuItem(child: Text("Financial Services Sector"),value: "Financial Services Sector"),
    const DropdownMenuItem(child: Text("Food and Agriculture Sector"),value: "Food and Agriculture Sector"),
    const DropdownMenuItem(child: Text("Government Facilities Sector"),value: "Government Facilities Sector"),
    const DropdownMenuItem(child: Text("Healthcare and Public Health Sector"),value: "Healthcare and Public Health Sector"),
    const DropdownMenuItem(child: Text("Homeland Security"),value: "Homeland Security"),
    const DropdownMenuItem(child: Text("Information Technology Sector"),value: "Information Technology Sector"),
    const DropdownMenuItem(child: Text("Materials, and Waste Sector"),value: "Materials, and Waste Sector"),
    const DropdownMenuItem(child: Text("Nuclear Reactors"),value: "Nuclear Reactors"),
    const DropdownMenuItem(child: Text("Transportation Sector"),value: "Transportation Sector"),
    const DropdownMenuItem(child: Text("Waste and Wastewater Systems Sector"),value: "Waste and Wastewater Systems Sector"),
    const DropdownMenuItem(child: Text("Other? Please Describe"),value: "Other? Please Describe"),
  ];
  return menuItems;
  }

  // approximateAmountItems
    List<DropdownMenuItem<String>> get approximateAmountItems { 
      List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("0 - 500,000 (USD)"),value: "0 - 500,000 (USD)"),
      const DropdownMenuItem(child: Text("500,000 - 1,000,000 (USD)"),value: "500,000 - 1,000,000 (USD)"),
      const DropdownMenuItem(child: Text("1,000,000 - 10,000,000 (USD)"),value: "1,000,000 - 10,000,000 (USD)"),
      const DropdownMenuItem(child: Text("10,000,000 - 50,000,000 (USD)"),value: "10,000,000 - 50,000,000 (USD)"),
      const DropdownMenuItem(child: Text("50,000,000 - 100,000,000 (USD)"),value: "50,000,000 - 100,000,000 (USD)"),
      const DropdownMenuItem(child: Text("100,000,000 - 500,000,000 (USD)"),value: "100,000,000 - 500,000,000 (USD)"),
      const DropdownMenuItem(child: Text("500,000,000 - 1,000,000,000 (USD)"),value: "500,000,000 - 1,000,000,000 (USD)"),
      const DropdownMenuItem(child: Text("1,000,000,000> (USD)"),value: "1,000,000,000> (USD)"),
      
    ];
    return menuItems;
  }


  // Name of the Agency that You Represent
  // AgencyNameItems
    List<DropdownMenuItem<String>> get agencyNameItems { 
      List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("AbilityOne Commission"),value: "AbilityOne Commission"),
      const DropdownMenuItem(child: Text("Access Board"),value: "Access Board"),
      const DropdownMenuItem(child: Text("Administration for Children and Families (ACF)"),value: "Administration for Children and Families (ACF)"),
      const DropdownMenuItem(child: Text("Administration for Community Living"),value: "Administration for Community Living"),
      const DropdownMenuItem(child: Text("Administration for Native Americans"),value: "Administration for Native Americans"),
      const DropdownMenuItem(child: Text("Administrative Conference of the United States"),value: "Administrative Conference of the United States"),
      const DropdownMenuItem(child: Text("Adminstrative Office of thr U.S Courts"),value: "Adminstrative Office of thr U.S Courts"),
      const DropdownMenuItem(child: Text("Advisory Council on Historic Preservation"),value: "Advisory Council on Historic Preservation"),
      const DropdownMenuItem(child: Text("Africa Command"),value: "Africa Command"),
      const DropdownMenuItem(child: Text("African Development Foundation"),value: "African Development Foundation"),
      const DropdownMenuItem(child: Text("Agency for Global Media"),value: "Agency for Global Media"),
      const DropdownMenuItem(child: Text("Agency for Healthcare Research and Quality (AHRQ)"),value: "Agency for Healthcare Research and Quality (AHRQ)"),
      const DropdownMenuItem(child: Text("Agency for International Development (USAID)"),value: "Agency for International Development (USAID)"),
      const DropdownMenuItem(child: Text("Agency for Toxic Substances and Disease Registry"),value: "Agency for Toxic Substances and Disease Registry"),
      const DropdownMenuItem(child: Text("Agricultural Marketing Service (AMS)"),value: "Agricultural Marketing Service (AMS)"),
      const DropdownMenuItem(child: Text("Agricultural Research Service"),value: "Agricultural Research Service"),
      const DropdownMenuItem(child: Text("Agriculture Department (USDA)"),value: "Agriculture Department (USDA)"),
      const DropdownMenuItem(child: Text("Agriculture Library"),value: "Agriculture Library"),
      const DropdownMenuItem(child: Text("Air Force"),value: "Air Force"),
      const DropdownMenuItem(child: Text("Air Force Reserve"),value: "Air Force Reserve"),
      const DropdownMenuItem(child: Text("Alcohol and Tobacco Tax and Trade Bureau"),value: "1,000,000,000> (USD)"),
      const DropdownMenuItem(child: Text("Alcohol, Tobacco, Firearms and Explosives Bureau (ATF)"),value: "Alcohol, Tobacco, Firearms and Explosives Bureau (ATF)"),
      const DropdownMenuItem(child: Text("Alhurra TV"),value: "Alhurra TV"),
      const DropdownMenuItem(child: Text("American Battle Monuments Commission"),value: "American Battle Monuments Commission"),
      const DropdownMenuItem(child: Text("AmeriCorps"),value: "AmeriCorps"),
      const DropdownMenuItem(child: Text("AmeriCorps Seniors"),value: "AmeriCorps Seniors"),
      const DropdownMenuItem(child: Text("Amtrak (AMTRAK)"),value: " Amtrak (AMTRAK)"),
      const DropdownMenuItem(child: Text("Animal and Plant Health Inspection Service (APHIS)"),value: "Animal and Plant Health Inspection Service (APHIS)"),
      const DropdownMenuItem(child: Text("Antitrust Division"),value: "Antitrust Division"),
      const DropdownMenuItem(child: Text("Appalachian Regional Commission"),value: " Appalachian Regional Commission"),
      const DropdownMenuItem(child: Text("Architect of the Capitol"),value: " Architect of the Capitol"),
      const DropdownMenuItem(child: Text("Archives, National Archives and Records Administration (NARA)"),value: " Archives, National Archives and Records Administration (NARA)"),
      const DropdownMenuItem(child: Text("Arctic Research Commission"),value: "Arctic Research Commission"),
      const DropdownMenuItem(child: Text(" Armed Forces Retirement Home"),value: " Armed Forces Retirement Home"),
      const DropdownMenuItem(child: Text("Arms Control and International Security"),value: "Arms Control and International Security"),
      const DropdownMenuItem(child: Text("Army"),value: "Army"),
      const DropdownMenuItem(child: Text("Army Corps of Engineers"),value: "Army Corps of Engineers"),
      const DropdownMenuItem(child: Text("Arthritis, Musculoskeletal and Skin Diseases, National Institute of"),value:"Arthritis, Musculoskeletal and Skin Diseases, National Institute of"),
      const DropdownMenuItem(child: Text("Bankruptcy Courts"),value: "Bankruptcy Courts"),
      const DropdownMenuItem(child: Text("Barry M. Goldwater Scholarship and Excellence in Education Program"),value: "Barry M. Goldwater Scholarship and Excellence in Education Program"),
      const DropdownMenuItem(child: Text("Bonneville Power Administration"),value: "Bonneville Power Administration"),
      const DropdownMenuItem(child: Text("Botanic Garden"),value: " Botanic Garden"),
      const DropdownMenuItem(child: Text("Bureau of Alcohol and Tobacco Tax and Trade"),value:"Bureau of Alcohol and Tobacco Tax and Trade"),
      const DropdownMenuItem(child: Text("Bureau of Alcohol, Tobacco, Firearms and Explosives (ATF)"),value: "Bureau of Alcohol, Tobacco, Firearms and Explosives (ATF)"),
      const DropdownMenuItem(child: Text("Bureau of Consular Affairs"),value: "Bureau of Consular Affairs"),
      const DropdownMenuItem(child: Text("Bureau of Consumer Financial Protection"),value: "Bureau of Consumer Financial Protection"),
      const DropdownMenuItem(child: Text("Bureau of Economic Analysis (BEA)"),value: "Bureau of Economic Analysis (BEA)"),
      const DropdownMenuItem(child: Text("Bureau of Engraving and Printing (BEP)"),value: "Bureau of Engraving and Printing (BEP)"),
      const DropdownMenuItem(child: Text("Bureau of Indian Affairs"),value: "Bureau of Indian Affairs"),
      const DropdownMenuItem(child: Text("Bureau of Industry and Security (BIS)"),value: "Bureau of Industry and Security (BIS)"),
      const DropdownMenuItem(child: Text("Bureau of International Labor Affairs"),value: "Bureau of International Labor Affairs"),
      const DropdownMenuItem(child: Text("Bureau of Justice Statistics"),value: "Bureau of Justice Statistics"),
      const DropdownMenuItem(child: Text("Bureau of Labor Statistics"),value: "Bureau of Labor Statistics"),
      const DropdownMenuItem(child: Text("Bureau of Land Management (BLM)"),value: " Bureau of Land Management (BLM)"),
      const DropdownMenuItem(child: Text("Bureau of Ocean Energy Management"),value: " Bureau of Ocean Energy Management"),
      const DropdownMenuItem(child: Text("Bureau of Prisons (BOP)"),value:"Bureau of Prisons (BOP)"),
      const DropdownMenuItem(child: Text("Bureau of Reclamation"),value:"Bureau of Reclamation"),
      const DropdownMenuItem(child: Text("Bureau of Safety and Environmental Enforcement (BSEE)"),value: " Bureau of Safety and Environmental Enforcement (BSEE)"),
      const DropdownMenuItem(child: Text("Bureau of the Census"),value: "Bureau of the Census"),
      const DropdownMenuItem(child: Text("Bureau of the Fiscal Service"),value: "Bureau of the Fiscal Service"),
      const DropdownMenuItem(child: Text("Bureau of Transportation Statistics"),value: " Bureau of Transportation Statistics"),
      const DropdownMenuItem(child: Text("Capitol Police"),value: "Capitol Police"),
      const DropdownMenuItem(child: Text("Capitol Visitor Center"),value: "Capitol Visitor Center"),
      const DropdownMenuItem(child: Text("Career, Technical, and Adult Education, Office of"),value: "Career, Technical, and Adult Education, Office of"),
      const DropdownMenuItem(child: Text("Census Bureau"),value: "Census Bureau"),
      const DropdownMenuItem(child: Text("Center for Food Safety and Applied Nutrition"),value: "Center for Food Safety and Applied Nutrition"),
      const DropdownMenuItem(child: Text("Center for Nutrition Policy and Promotion (CNPP)"),value: "Center for Nutrition Policy and Promotion (CNPP)"),
      const DropdownMenuItem(child: Text("Center for Parent Information and Resources (CPIR)"),value: "Center for Parent Information and Resources (CPIR)"),
      const DropdownMenuItem(child: Text("Centers for Disease Control and Prevention (CDC)"),value: "Centers for Disease Control and Prevention (CDC)"),
      const DropdownMenuItem(child: Text("Centers for Medicare and Medicaid Services (CMS)"),value: "Centers for Medicare and Medicaid Services (CMS)"),
      const DropdownMenuItem(child: Text("Central Command (CENTCOM)"),value: "Central Command (CENTCOM)"),
      const DropdownMenuItem(child: Text("Central Intelligence Agency (CIA)"),value: " Central Intelligence Agency (CIA)"),
      const DropdownMenuItem(child: Text("Chemical Safety Board"),value: "Chemical Safety Board"),
      const DropdownMenuItem(child: Text("Chief Acquisition Officers Council"),value: "Chief Acquisition Officers Council"),
      const DropdownMenuItem(child: Text("Chief Financial Officers Council"),value: "Chief Financial Officers Council"),
      const DropdownMenuItem(child: Text("Chief Human Capital Officers Council"),value: "Chief Human Capital Officers Council"),
      const DropdownMenuItem(child: Text("Chief Information Officers Council"),value: "Chief Information Officers Council"),
      const DropdownMenuItem(child: Text("Child Support Enforcement, Office of (OCSE)"),value: "Child Support Enforcement, Office of (OCSE)"),
      const DropdownMenuItem(child: Text("Circuit Courts of Appeal"),value: "Circuit Courts of Appeal"),
      const DropdownMenuItem(child: Text("Citizens' Stamp Advisory Committee"),value: "Citizens' Stamp Advisory Committee"),
      const DropdownMenuItem(child: Text("Citizenship and Immigration Services (USCIS)"),value: "Citizenship and Immigration Services (USCIS)"),
      const DropdownMenuItem(child: Text("Civil Rights Division, Department of Justice"),value: "Civil Rights Division, Department of Justice"),
      const DropdownMenuItem(child: Text("Civil Rights, Department of Education Office of"),value: " Civil Rights, Department of Education Office of"),
      const DropdownMenuItem(child: Text("Civil Rights, Department of Health and Human Services Office for"),value: " Civil Rights, Department of Health and Human Services Office for"),
      const DropdownMenuItem(child: Text("Coast Guard"),value: "Coast Guard"),
      const DropdownMenuItem(child: Text("College of Information and Cyberspace"),value: " College of Information and Cyberspace"),
      const DropdownMenuItem(child: Text("Commerce Department (DOC)"),value: "Commerce Department (DOC)"),
      const DropdownMenuItem(child: Text("Commission of Fine Arts"),value: "Commission of Fine Arts"),
      const DropdownMenuItem(child: Text("Commission on Civil Rights"),value: "Commission on Civil Rights"),
      const DropdownMenuItem(child: Text("Commission on International Religious Freedom"),value: " Commission on International Religious Freedom"),
      const DropdownMenuItem(child: Text("Commission on Presidential Scholars"),value: "Commission on Presidential Scholars"),
      const DropdownMenuItem(child: Text("Commission on Security and Cooperation in Europe (Helsinki Commission)"),value: " Commission on Security and Cooperation in Europe (Helsinki Commission)"),
      const DropdownMenuItem(child: Text("Committee for the Implementation of Textile Agreements"),value: "Committee for the Implementation of Textile Agreements"),
      const DropdownMenuItem(child: Text("Committee on Foreign Investment in the United States"),value: "Committee on Foreign Investment in the United States"),
      const DropdownMenuItem(child: Text("Commodity Futures Trading Commission (CFTC)"),value: "Commodity Futures Trading Commission (CFTC)"),
      const DropdownMenuItem(child: Text("Community Oriented Policing Services (COPS)"),value: "Community Oriented Policing Services (COPS)"),
      const DropdownMenuItem(child: Text("Community Planning and Development"),value: "Community Planning and Development"),
      const DropdownMenuItem(child: Text("Compliance, Office of"),value: "Compliance, Office of"),
      const DropdownMenuItem(child: Text("Comptroller of the Currency, Office of (OCC)"),value: "Comptroller of the Currency, Office of (OCC)"),
      const DropdownMenuItem(child: Text("Computer Emergency Readiness Team (US CERT)"),value: "Computer Emergency Readiness Team (US CERT)"),
      const DropdownMenuItem(child: Text("Congress—U.S. House of Representatives"),value: "Congress—U.S. House of Representatives"),
      const DropdownMenuItem(child: Text("Congress—U.S. Senates"),value: "Congress—U.S. Senate"),
      const DropdownMenuItem(child: Text("Congressional Budget Office (CBO)"),value: "Congressional Budget Office (CBO)"),
      const DropdownMenuItem(child: Text("Congressional Research Service"),value: "Congressional Research Service"),
      const DropdownMenuItem(child: Text("Consular Affairs, Bureau of"),value: "Consular Affairs, Bureau of"),
      const DropdownMenuItem(child: Text("Consumer Financial Protection Bureau"),value: "Consumer Financial Protection Bureau"),
      const DropdownMenuItem(child: Text("Consumer Product Safety Commission (CPSC)"),value: "Consumer Product Safety Commission (CPSC)"),
      const DropdownMenuItem(child: Text("Coordinating Council on Juvenile Justice and Delinquency Prevention"),value: "Coordinating Council on Juvenile Justice and Delinquency Prevention"),
      const DropdownMenuItem(child: Text("Copyright Office"),value: "Copyright Office"),
      const DropdownMenuItem(child: Text("Corps of Engineers"),value: "Corps of Engineers"),
      const DropdownMenuItem(child: Text("Council of Economic Advisers"),value: "Council of Economic Advisers"),
      const DropdownMenuItem(child: Text("Council of the Inspectors General on Integrity and Efficiency"),value: "Council of the Inspectors General on Integrity and Efficiency"),
      const DropdownMenuItem(child: Text("Council on Environmental Quality"),value: "Council on Environmental Quality"),
      const DropdownMenuItem(child: Text("Court of Appeals for the Armed Forces"),value: "Court of Appeals for the Armed Forces"),
      const DropdownMenuItem(child: Text("Court of Appeals for the Federal Circuit"),value: "Court of Appeals for the Federal Circuit"),
      const DropdownMenuItem(child: Text("Court of Appeals for Veterans Claims"),value: "Court of Appeals for Veterans Claims"),
      const DropdownMenuItem(child: Text("Court of Federal Claims"), value:"Court of Federal Claims"),
      const DropdownMenuItem(child: Text("Court of International Trade"), value:"Court of International Trade"),
      const DropdownMenuItem(child: Text("Court Services and Offender Supervision Agency for the District of Columbia"),value: " Court Services and Offender Supervision Agency for the District of Columbia"),
      const DropdownMenuItem(child: Text("Customs and Border Protection"),value: "Customs and Border Protection"),
      const DropdownMenuItem(child: Text("Cyber Command"), value: " Cyber Command"),
      const DropdownMenuItem(child: Text("Cybersecurity and Infrastructure Security Agency (CISA)"),value: "Cybersecurity and Infrastructure Security Agency (CISA)"),
      const DropdownMenuItem(child: Text("Debt and Claims Management Center"),value: "Debt and Claims Management Center"),
      const DropdownMenuItem(child: Text("Defense Acquisition University"),value: " Defense Acquisition University"),
      const DropdownMenuItem(child: Text("Defense Advanced Research Projects Agency (DARPA)"),value: "Defense Advanced Research Projects Agency (DARPA)"),
      const DropdownMenuItem(child: Text("Defense Commissary Agency"),value: "Defense Commissary Agency"),
      const DropdownMenuItem(child: Text("Defense Contract Audit Agency"),value: "Defense Contract Audit Agency"),
      const DropdownMenuItem(child: Text("Defense Contract Management Agency"),value: " Defense Contract Management Agency"),
      const DropdownMenuItem(child: Text("Defense Counterintelligence and Security Agency"),value: "  Defense Counterintelligence and Security Agency"),
      const DropdownMenuItem(child: Text("Defense Department (DOD)"),value: "Defense Department (DOD)"),
      const DropdownMenuItem(child: Text("Defense Finance and Accounting Service (DFAS)"),value: "Defense Finance and Accounting Service (DFAS)"),
      const DropdownMenuItem(child: Text("Defense Finance and Accounting Service Debt and Claims Management Center"),value: "Defense Finance and Accounting Service Debt and Claims Management Center"),
      const DropdownMenuItem(child: Text("Defense Health Agency"),value: "Defense Health Agency"),
      const DropdownMenuItem(child: Text("Defense Information Systems Agency (DISA)"),value: "Defense Information Systems Agency (DISA)"),
      const DropdownMenuItem(child: Text("Defense Intelligence Agency (DIA)"),value: "Defense Intelligence Agency (DIA)"),
      const DropdownMenuItem(child: Text("Defense Logistics Agency (DLA)"),value: "Defense Logistics Agency (DLA)"),
      const DropdownMenuItem(child: Text("Defense Nuclear Facilities Safety Board"),value: "Defense Nuclear Facilities Safety Board"),
      const DropdownMenuItem(child: Text("Defense Security Cooperation Agency (DSCA)"),value: "Defense Security Cooperation Agency (DSCA)"),
      const DropdownMenuItem(child: Text("Defense Technical Information Center (DTIC)"),value: "Defense Technical Information Center (DTIC)"),
      const DropdownMenuItem(child: Text("Defense Threat Reduction Agency (DTRA)"),value: "Defense Threat Reduction Agency (DTRA)"),
      const DropdownMenuItem(child: Text("Delaware River Basin Commission"),value: "Delaware River Basin Commission"),
      const DropdownMenuItem(child: Text("Delta Regional Authority"),value: "Delta Regional Authority"),
      const DropdownMenuItem(child: Text("Denali Commission"),value: "Denali Commission"),
      const DropdownMenuItem(child: Text("Department of Agriculture (USDA)"),value: "Department of Agriculture (USDA)"),
      const DropdownMenuItem(child: Text("Department of Commerce (DOC)"),value: "Department of Commerce (DOC)"),
      const DropdownMenuItem(child: Text("Department of Defense (DOD)"),value: "Department of Defense (DOD)"),
      const DropdownMenuItem(child: Text("Department of Education (ED)"),value: "Department of Education (ED)"),
      const DropdownMenuItem(child: Text("Department of Energy (DOE)"),value: "Department of Energy (DOE)"),
      const DropdownMenuItem(child: Text("Department of Health and Human Services (HHS)"),value: "Department of Health and Human Services (HHS)"),
      const DropdownMenuItem(child: Text("Department of Homeland Security (DHS)"),value: "Department of Homeland Security (DHS)"),
      const DropdownMenuItem(child: Text("Department of Housing and Urban Development (HUD)"),value: "Department of Housing and Urban Development (HUD)"),
      const DropdownMenuItem(child: Text("Department of Justice (DOJ)"),value: "Department of Justice (DOJ)"),
      const DropdownMenuItem(child: Text("Department of Labor (DOL)"),value: "Department of Labor (DOL)"),
      const DropdownMenuItem(child: Text("Department of State (DOS)"),value: "Department of State (DOS)"),
      const DropdownMenuItem(child: Text("Department of the Interior (DOI)"),value: "Department of the Interior (DOI)"),
      const DropdownMenuItem(child: Text("Department of the Treasury"),value: "Department of the Treasury"),
      const DropdownMenuItem(child: Text("Department of Transportation (DOT)"),value: "Department of Transportation (DOT)"),
      const DropdownMenuItem(child: Text("Department of Veterans Affairs (VA)"),value: "Department of Veterans Affairs (VA)"),
      const DropdownMenuItem(child: Text("Director of National Intelligence, Office of"),value: "Director of National Intelligence, Office of"),
      const DropdownMenuItem(child: Text("Disability Employment Policy, Office of (ODEP)"),value: "Disability Employment Policy, Office of (ODEP)"),
      const DropdownMenuItem(child: Text("Drug Enforcement Administration (DEA)"),value: "Drug Enforcement Administration (DEA)"),
      const DropdownMenuItem(child: Text("Disability Employment Policy, Office of (ODEP)"),value: "Disability Employment Policy, Office of (ODEP)"),
      const DropdownMenuItem(child: Text("Dwight D. Eisenhower School for National Security and Resource Strategy"),value: " Dwight D. Eisenhower School for National Security and Resource Strategy"),
      const DropdownMenuItem(child: Text("Economic Analysis, Bureau of (BEA)"),value: "Economic Analysis, Bureau of (BEA)"),
      const DropdownMenuItem(child: Text("Economic Development Administration (EDA)"),value: "Economic Development Administration (EDA)"),
      const DropdownMenuItem(child: Text("Economic Growth, Energy, and the Environment"),value: "Economic Growth, Energy, and the Environment"),
      const DropdownMenuItem(child: Text("Economic Research Service"),value: "Economic Research Service"),
      const DropdownMenuItem(child: Text("Education Department (ED)"),value: "Education Department (ED)"),
      const DropdownMenuItem(child: Text("Elder Justice Initiative"),value: "Elder Justice Initiative"),
      const DropdownMenuItem(child: Text("Election Assistance Commission (EAC)"), value: "Election Assistance Commission (EAC)"),
      const DropdownMenuItem(child: Text("Elementary and Secondary Education, Office of"), value: " Elementary and Secondary Education, Office of"),
      const DropdownMenuItem(child: Text("Employee Benefits Security Administration (EBSA)"), value: "Employee Benefits Security Administration (EBSA)"),
      const DropdownMenuItem(child: Text("Employment and Training Administration"), value: "Employment and Training Administration"),
      const DropdownMenuItem(child: Text("Endangered Species Program)"), value: "Endangered Species Program"),
      const DropdownMenuItem(child: Text("Energy Department (DOE)"), value: "Energy Department (DOE)"),
      const DropdownMenuItem(child: Text("Energy Star Program"), value: "Energy Star Program"),
      const DropdownMenuItem(child: Text("English Language Acquisition Office"), value: "English Language Acquisition Office"),
      const DropdownMenuItem(child: Text("Engraving and Printing, Bureau of (BEP)"), value: "Engraving and Printing, Bureau of (BEP)"),
      const DropdownMenuItem(child: Text("Environmental Management, Office of"), value: "Environmental Management, Office of"),
      const DropdownMenuItem(child: Text("Environmental Protection Agency (EPA)"), value: "Environmental Protection Agency (EPA)"),
      const DropdownMenuItem(child: Text("Equal Employment Opportunity Commission (EEOC)"), value: "Equal Employment Opportunity Commission (EEOC)"),
      const DropdownMenuItem(child: Text("European Command"), value: "European Command"),
      const DropdownMenuItem(child: Text("Executive Office for Immigration Review"), value: "Executive Office for Immigration Review"),
      const DropdownMenuItem(child: Text("Export-Import Bank of the United States"), value: "Export-Import Bank of the United States"),
      const DropdownMenuItem(child: Text("Fair Housing and Equal Opportunity (FHEO)"), value: "Fair Housing and Equal Opportunity (FHEO)"),
      const DropdownMenuItem(child: Text("Fannie Mae"), value: "Fannie Mae"),
      const DropdownMenuItem(child: Text("Farm Credit Administration"), value: "Farm Credit Administration"),
      const DropdownMenuItem(child: Text("Farm Credit System Insurance Corporation"), value: "Farm Credit System Insurance Corporation"),
      const DropdownMenuItem(child: Text("Farm Service Agency"), value: "Farm Service Agency"),
      const DropdownMenuItem(child: Text("Federal Accounting Standards Advisory Board"), value: "Federal Accounting Standards Advisory Board"),
      const DropdownMenuItem(child: Text("Federal Aviation Administration (FAA)"), value: "Federal Aviation Administration (FAA)"),
      const DropdownMenuItem(child: Text("Federal Bureau of Investigation (FBI))"), value: "Federal Bureau of Investigation (FBI)"),
      const DropdownMenuItem(child: Text("Federal Bureau of Prisons (BOP)"), value: "Federal Bureau of Prisons (BOP)"),
      const DropdownMenuItem(child: Text("Federal Citizen Information Center"), value: "Federal Citizen Information Center"),
      const DropdownMenuItem(child: Text("Federal Communications Commission (FCC)"), value: "Federal Communications Commission (FCC)"),
      const DropdownMenuItem(child: Text("Federal Consulting Group"), value: "Federal Consulting Group"),
      const DropdownMenuItem(child: Text("Federal Court Interpreters"), value: "Federal Court Interpreters"),
      const DropdownMenuItem(child: Text("Federal Deposit Insurance Corporation (FDIC)"), value: "Federal Deposit Insurance Corporation (FDIC)"),
      const DropdownMenuItem(child: Text("Federal Election Commission"), value: "Federal Election Commission"),
      const DropdownMenuItem(child: Text("Federal Emergency Management Agency (FEMA)"), value: "Federal Emergency Management Agency (FEMA)"),
      const DropdownMenuItem(child: Text("Federal Energy Regulatory Commission"), value: "Federal Energy Regulatory Commission"),
      const DropdownMenuItem(child: Text("Federal Executive Boards"), value: "Federal Executive Boards"),
      const DropdownMenuItem(child: Text("Federal Financial Institutions Examination Council"), value: "Federal Financial Institutions Examination Council"),
      const DropdownMenuItem(child: Text("Federal Financing Bank"), value: "Federal Financing Bank"),
      const DropdownMenuItem(child: Text("Federal Geographic Data Committee"), value: "Federal Geographic Data Committee"),
      const DropdownMenuItem(child: Text("Federal Highway Administration (FHA)"), value: "Federal Highway Administration (FHA)"),
      const DropdownMenuItem(child: Text("Federal Home Loan Mortgage Corporation (Freddie Mac)"), value: "Federal Home Loan Mortgage Corporation (Freddie Mac)"),
      const DropdownMenuItem(child: Text("Federal Housing Administration (FHA)"), value: "Federal Housing Administration (FHA)"),
      const DropdownMenuItem(child: Text("Federal Housing Finance Agency"), value: "Federal Housing Finance Agency"),
      const DropdownMenuItem(child: Text("Federal Interagency Committee on Education"), value: "Federal Interagency Committee on Education"),
      const DropdownMenuItem(child: Text("Federal Interagency Council on Statistical Policy"), value: "Federal Interagency Council on Statistical Policy"),
      const DropdownMenuItem(child: Text("Federal Judicial Center"), value: "Federal Judicial Center)"),
      const DropdownMenuItem(child: Text("Federal Labor Relations Authority (FLRA)"), value: "Federal Labor Relations Authority (FLRA)"),
      const DropdownMenuItem(child: Text("Federal Laboratory Consortium for Technology Transfer"), value: "Federal Laboratory Consortium for Technology Transfer"),
      const DropdownMenuItem(child: Text("Federal Law Enforcement Training Center (FLETC)"), value: "Federal Law Enforcement Training Center (FLETC)"),
      const DropdownMenuItem(child: Text("Federal Library and Information Center Committee"), value: "Federal Library and Information Center Committee"),
      const DropdownMenuItem(child: Text("Federal Maritime Commission"), value: "Federal Maritime Commission"),
      const DropdownMenuItem(child: Text("Federal Mediation and Conciliation Service)"), value: "Federal Mediation and Conciliation Service"),
      const DropdownMenuItem(child: Text("Federal Mine Safety and Health Review Commission"), value: "Federal Mine Safety and Health Review Commission"),
      const DropdownMenuItem(child: Text("Federal Motor Carrier Safety Administration (FMCSA)"), value: "Federal Motor Carrier Safety Administration (FMCSA)"),
      const DropdownMenuItem(child: Text("Federal National Mortgage Association (Fannie Mae)"), value: "Federal National Mortgage Association (Fannie Mae)"),
      const DropdownMenuItem(child: Text("Federal Protective Service"), value: "Federal Protective Service"),
      const DropdownMenuItem(child: Text("Federal Railroad Administration (FRA)"), value: "Federal Railroad Administration (FRA)"),
      const DropdownMenuItem(child: Text("Federal Register"), value: "Federal Register"),
      const DropdownMenuItem(child: Text("Federal Reserve System"), value: "Federal Reserve System"),
      const DropdownMenuItem(child: Text("Federal Retirement Thrift Investment Board"), value: "Federal Retirement Thrift Investment Board"),
      const DropdownMenuItem(child: Text("Federal Student Aid Information Center"), value: "Federal Student Aid Information Center"),
      const DropdownMenuItem(child: Text("Federal Trade Commission (FTC)"), value: "Federal Trade Commission (FTC)"),
      const DropdownMenuItem(child: Text("Federal Transit Administration (FTA)"), value: "Federal Transit Administration (FTA)"),
      const DropdownMenuItem(child: Text("Federal Voting Assistance Program"), value: "Federal Voting Assistance Program"),
      const DropdownMenuItem(child: Text("FedStats"), value: "FedStats"),
      const DropdownMenuItem(child: Text("Fire Administration (USFA)"), value: "Fire Administration (USFA)"),
      const DropdownMenuItem(child: Text("Fiscal Service, Bureau of the"), value: "Fiscal Service, Bureau of the"),
      const DropdownMenuItem(child: Text("Fish and Wildlife Service (FWS)"), value: "Fish and Wildlife Service (FWS)"),
      const DropdownMenuItem(child: Text("Fleet Forces Command"), value: "Fleet Forces Command"),
      const DropdownMenuItem(child: Text("Food and Agriculture, National Institute of (NIFA)"), value: "Food and Agriculture, National Institute of (NIFA)"),
      const DropdownMenuItem(child: Text("Food and Drug Administration (FDA)"), value: "Food and Drug Administration (FDA)"),
      const DropdownMenuItem(child: Text("Food and Nutrition Service"), value: "Food and Nutrition Service"),
      const DropdownMenuItem(child: Text("Food Safety and Inspection Service"), value: "Food Safety and Inspection Service"),
      const DropdownMenuItem(child: Text("Foreign Agricultural Service"), value: "Foreign Agricultural Service"),
      const DropdownMenuItem(child: Text("Foreign Claims Settlement Commission"), value: "Foreign Claims Settlement Commission"),
      const DropdownMenuItem(child: Text("Forest Service"), value: "Forest Service"),
      const DropdownMenuItem(child: Text("Fossil Energy"), value: "Fossil Energy"),
      const DropdownMenuItem(child: Text("Freddie Mac"), value: "Freddie Mac"),
      const DropdownMenuItem(child: Text("Fulbright Foreign Scholarship Board"), value: "Fulbright Foreign Scholarship Board"),
      const DropdownMenuItem(child: Text("General Services Administration (GSA)"), value: "General Services Administration (GSA)"),
      const DropdownMenuItem(child: Text("Geological Survey (USGS)"), value: "Geological Survey (USGS)"),
      const DropdownMenuItem(child: Text("Ginnie Mae"), value: "Ginnie Mae"),
      const DropdownMenuItem(child: Text("Global Media, Agency for"), value: "Global Media, Agency for"),
      const DropdownMenuItem(child: Text("Government Accountability Office (GAO)"), value: "Government Accountability Office (GAO)"),
      const DropdownMenuItem(child: Text("Government Ethics, Office of (OGE)"), value: "Government Ethics, Office of (OGE)"),
      const DropdownMenuItem(child: Text("Government National Mortgage Association (Ginnie Mae)"), value: "Government National Mortgage Association (Ginnie Mae)"),
      const DropdownMenuItem(child: Text("Government Publishing Office (GPO)"), value: "Government Publishing Office (GPO)"),
      const DropdownMenuItem(child: Text("Grain Inspection, Packers and Stockyards Administration"), value: "Grain Inspection, Packers and Stockyards Administration"),
      const DropdownMenuItem(child: Text("Harry S. Truman Scholarship Foundation "), value: "Harry S. Truman Scholarship Foundation "),
      const DropdownMenuItem(child: Text("Health and Human Services Department (HHS)"), value: "Health and Human Services Department (HHS)"),
      const DropdownMenuItem(child: Text("Health Resources and Services Administration"), value: "Health Resources and Services Administration"),
      const DropdownMenuItem(child: Text("Helsinki Commission"), value: "Helsinki Commission"),
      const DropdownMenuItem(child: Text("Holocaust Memorial Museum"), value: "Holocaust Memorial Museum"),
      const DropdownMenuItem(child: Text("Homeland Security Department (DHS)"), value: "Homeland Security Department (DHS)"),
      const DropdownMenuItem(child: Text("Hour and Wage Division (WHD)"), value: "Hour and Wage Division (WHD)"),
      const DropdownMenuItem(child: Text("House of Representatives"), value: "House of Representatives"),
      const DropdownMenuItem(child: Text("House Office of Inspector General"), value: "House Office of Inspector General"),
      const DropdownMenuItem(child: Text("House Office of the Clerk"), value: "House Office of the Clerk"),
      const DropdownMenuItem(child: Text("Housing and Urban Development, Department of (HUD)"), value: "Housing and Urban Development, Department of (HUD)"),
      const DropdownMenuItem(child: Text("Housing Office"), value: "Housing Office"),
      const DropdownMenuItem(child: Text("Immigrant and Employee Rights Section (IER)"), value: "Immigrant and Employee Rights Section (IER)"),
      const DropdownMenuItem(child: Text("Immigration and Citizenship Services (USCIS)"), value: "Immigration and Citizenship Services (USCIS)"),
      const DropdownMenuItem(child: Text("Immigration and Customs Enforcement (ICE)"), value: "Immigration and Customs Enforcement (ICE)"),
      const DropdownMenuItem(child: Text("Indian Affairs"), value: "Indian Affairs"),
      const DropdownMenuItem(child: Text("Indian Arts and Crafts Board"), value: "Indian Arts and Crafts Board"),
      const DropdownMenuItem(child: Text("Indian Health Service"), value: "Indian Health Service"),
      const DropdownMenuItem(child: Text("Indo-Pacific Command"), value: "Indo-Pacific Command"),
      const DropdownMenuItem(child: Text("Indoor Air Quality (IAQ)"), value: "Indoor Air Quality (IAQ)"),
      const DropdownMenuItem(child: Text("Industrial College of the Armed Forces"), value: "Industrial College of the Armed Forces"),
      const DropdownMenuItem(child: Text("Housing Office"), value: "Housing Office"),
      const DropdownMenuItem(child: Text("Industry and Security, Bureau of (BIS)"), value: "Industry and Security, Bureau of (BIS)"),
      const DropdownMenuItem(child: Text("Inspectors General"), value: "Inspectors General"),
      const DropdownMenuItem(child: Text("Institute of Education Sciences"), value: "Institute of Education Sciences"),
      const DropdownMenuItem(child: Text("Institute of Museum and Library Services"), value: "Institute of Museum and Library Services"),
      const DropdownMenuItem(child: Text("Institute of Peace"), value: "Institute of Peace"),
      const DropdownMenuItem(child: Text("Inter-American Foundation"), value: "Inter-American Foundation"),
      const DropdownMenuItem(child: Text("Interagency Alternative Dispute Resolution Working Group"), value: "Interagency Alternative Dispute Resolution Working Group"),
      const DropdownMenuItem(child: Text("Interagency Committee for the Management of Noxious and Exotic Weeds"), value: "Interagency Committee for the Management of Noxious and Exotic Weeds"),
      const DropdownMenuItem(child: Text("Interagency Council on Homelessness"), value: "Interagency Council on Homelessness"),
      const DropdownMenuItem(child: Text("Interior Department (DOI)"), value: "Interior Department (DOI)"),
      const DropdownMenuItem(child: Text("Internal Revenue Service (IRS)"), value: "Internal Revenue Service (IRS)"),
      const DropdownMenuItem(child: Text("International Development Finance Corporation (DFC)"), value: "International Development Finance Corporation (DFC)"),
      const DropdownMenuItem(child: Text("International Labor Affairs, Bureau of"), value: "International Labor Affairs, Bureau of"),
      const DropdownMenuItem(child: Text("International Trade Administration (ITA)"), value: "International Trade Administration (ITA)"),
      const DropdownMenuItem(child: Text("International Trade Commission"), value: "International Trade Commission"),
      const DropdownMenuItem(child: Text("Interpol"), value: "Interpol"),
      const DropdownMenuItem(child: Text("James Madison Memorial Fellowship Foundation"), value: "James Madison Memorial Fellowship Foundation"),
      const DropdownMenuItem(child: Text("Japan-United States Friendship Commission<option value="), value: "Japan-United States Friendship Commission<option value="),
      const DropdownMenuItem(child: Text("Women's Bureau"), value: "Women's Bureau"),
      const DropdownMenuItem(child: Text("Woodrow Wilson International Center for Scholars"), value: "Woodrow Wilson International Center for Scholars"),
    ];
    return menuItems;
  }