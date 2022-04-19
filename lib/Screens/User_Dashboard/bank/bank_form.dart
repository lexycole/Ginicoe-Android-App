  import 'package:flutter/material.dart';
  import '../user_dashboard.dart';
  import 'package:google_fonts/google_fonts.dart';
  import '../widgets/style.dart';
  import '../widgets/constants.dart';

// Extra function
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

  void setState(Null Function() param0) {
        }
DateTime _selectedDate = DateTime.now();
TextEditingController _controller = TextEditingController();

bool isChecked = false;


class BankForm extends StatelessWidget {
  const BankForm({Key? key}) : super(key: key);

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
        title: const Text('Bank Form'),
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
                children: [
                  Text("Bank Details",
                    style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                      height: 15,
                    ),
                     TextField(
                decoration: InputDecoration(
                    labelText: "What is Your First Name?",
                    hintText: "What is Your First Name?",
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
                    labelText: "What is Your Last/SurName?",
                    hintText: "What is Your Last/SurName?",
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
                          Text("What is the Name of the Financial Institution (FI)?")
                        ]
                      ),
                    )
                  ],
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Financial Institution (FI)?",
                    hintText: "Financial Institution (FI)?",
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
                            Text("Who is the Primary contact ?")
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
                      validator: (value) => value == null ? "LN" : null,
                      dropdownColor: kPrimaryColor,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      hint: const Text('LN'),
                      items: primaryContactItems
                    ),
                  const SizedBox(
                height: 15,
              ),
              Row(children: [
                      Flexible(
                        child: Column(
                          children: const [
                            Text("What is the primary contact’s Job Title?")
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
                      validator: (value) => value == null ? "What is the primary contact’s Job Title?" : null,
                      dropdownColor: kPrimaryColor,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      hint: const Text('What is the primary contact’s Job Title?'),
                      items: jobTitleItems
                    ),
             const SizedBox(
                height: 15,
              ),
              Row(children: [
                          Flexible(
                            child: Column(
                              children: const [
                                Text("Who is the Secondary or Alternate contact?")
                              ]
                            ),
                          )
                        ],
                ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Who is the Secondary or Alternate contact?",
                    hintText: "Secondart's Fn",
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
                    labelText: "Secondary's Ln",
                    hintText: "Secondary's Ln",
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
                        labelText: "Fax Number",
                        hintText: "Fax Number",
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
                        labelText: "E-Mail Address",
                        hintText: "E-Mail Address",
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
                        labelText: "Alternate Telephone Number",
                        hintText: "Alternate Telephone Number",
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
                        labelText: "Fax Number (If Different Than Primary)",
                        hintText: "Fax Number (If Different Than Primary)",
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
                        labelText: "Mobile",
                        hintText: "Mobile",
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
                            labelText: "E-Mail Address",
                            hintText: "E-Mail Address",
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
                            Text("What is the primary contact’s Job Title?")
                          ]
                        ),
                      )
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
                              "Acquirers",
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
                          "Internet Bank", 
                          style: TextStyle(color: active)
                        ),
                          ],
                        ),
                  const SizedBox(
                    height: 15,
                  ),
                 const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              " Asset Management Company",
                            ),
                          ],
                        ),
                    ],
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
                               Text(
                              "Investment Bank",
                        style: TextStyle(color: active)

                            ),
                          ],
                        ),
                         const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Bond Brokerage Firm",
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
                         "Investment Company", 
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
                              "Check Cashing Company",
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
                         "Mortgage Banks", 
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
                              " Commercial banks",
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
                         "Mutual Bank", 
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
                              "Community Bank",
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
                         "Payday Lender", 
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
                              "Development Financial Inst",
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
                         "Savings & Loan", 
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
                              "Credit Union",
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
                         "Shadow Bank", 
                        style: TextStyle(color: active)
                      ),
                      ],
              ),
              
              const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Discount Brokerage Bonds",
                            ),
                          ],
                        ),
                      ],
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
                            Text(
                              "Stock Brokerage Firm",
                        style: TextStyle(color: active)

                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Discount Brokerage Stocks",
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
                         "Title Company", 
                        style: TextStyle(color: active)
                      ),
                      ],
                ),
                 const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "FaceAmount Certificate",
                            ),
                          ],
                        ),
                       ],
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
                             Text(
                              "Unit Investment Trusts (UIT)",
                        style: TextStyle(color: active)

                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Full Brokerage Bonds",
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
                         "Full Brokerage Stocks", 
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
                              "Hedge Funds",
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
                         "Insurance Company", 
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
                            Text("What is the primary contact’s Job Title?")
                          ]
                        ),
                      )
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
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "What State is Your Charter In?",
                        hintText: "What State is Your Charter In?",
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
                                        Text("Does Your FI Operate Across State Lines?")
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
                            Text("What is the Total Asset Size of Your Global FI ?")
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
                      validator: (value) => value == null ? "What is the Total Asset Size of Your Global FI ?" : null,
                      dropdownColor: kPrimaryColor,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      hint: const Text('What is the Total Asset Size of Your Global FI ?'),
                      items: totalAssetItems
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                      Flexible(
                        child: Column(
                          children: const [
                            Text("Check All Deliverables That Your Financial Institution Performs")
                          ]
                        ),
                      )
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
                              "Alternative Investments",
                            ),
                          ],
                        ),
                          ],
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
                             Text(
                              "Initial Public Offerings (IPOs)",
                                    style: TextStyle(color: active)
                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Auto loans",
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
                          "Institutional Client Broker", 
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
                              "Bonds",
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
                          "Insurance products", 
                          style: TextStyle(color: active)
                        ),
                          ],
                        ),
                     const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Business Banking Accounts",
                            ),
                          ],
                        ),
                      ],
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
                            Text(
                              "Investment Banking",
                          style: TextStyle(color: active)

                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Business Banking Loans",
                            ),
                          ],
                        ),
                          ],
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
                            Text(
                              "Mergers Acquisitions Facilitator",
                                style: TextStyle(color: active)
                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Car Insurance",
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
                          "Mortgage loans", 
                          style: TextStyle(color: active)
                        ),
                          ],
                        ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Checking account",
                            ),
                          ],
                        ),
                      ],
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
                             Text(
                              "Mutual Funds Closed-ended",
                          style: TextStyle(color: active)
                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Commercial Appraisals",
                            ),
                          ],
                        ),
                      ],
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
                           Text(
                              "Mutual Funds Open-ended",
                          style: TextStyle(color: active)

                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Casualty Insurance",
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
                          "Personal loans", 
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
                              "Commercial Paper",
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
                          "Property Insurance", 
                          style: TextStyle(color: active)
                        ),
                          ],
                        ),
                  const SizedBox(
                  height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Commercial Real Estate Loans",
                            ),
                          ],
                        ),
                      ],
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
                           Text(
                              "Public / Private Share Offerings",
                          style: TextStyle(color: active)

                            ),
                          ],
                        ),
                       
                  const SizedBox(
                  height: 15,
                  ),
                  const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Corporate Reorganizations",
                            ),
                          ],
                        ),
                          ],
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
                             Text(
                              "Residential Appraisals",
                          style: TextStyle(color: active)
                            ),
                          ],
                        ),
                        const Divider(
                  color: primaryColor,
                  height: 1.5,
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
                              "Death Insurance",
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
                          "Savings accounts", 
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
                              "Debit cards",
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
                          "Stocks", 
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
                              " Demand deposits",
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
                          "SWIFT", 
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
                              "Disability Insurance",
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
                          "Tax Deferred Annuity", 
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
                              "Exchange Traded Funds",
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
                          "Underwriting Debit", 
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
                              " Fire Insurance",
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
                          " Wealth advisor", 
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
                              "Health Insurance",
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
                          "Wire Transfers ", 
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
                                    Text("What is Your Bank Identification Number (BIN)?")
                                  ]
                                ),
                              )
                            ],
                        ),
                         TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Bank Identification Number (BIN)?",
                                hintText: "Bank Identification Number (BIN)?",
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
                                    Text("What is the Daily Trade Volume in Your Department/Division/Unit?")
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
                      validator: (value) => value == null ? "What is the Daily Trade Volume in Your Department/Division/Unit?" : null,
                      dropdownColor: kPrimaryColor,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      hint: const Text('What is the Daily Trade Volume in Your Department/Division/Unit?'),
                      items: dailyTradeItems
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                    Text("What is the Daily Trade Volume in Your Department/Division/Unit?")
                                  ]
                                ),
                              )
                            ],
                        ),
              const SizedBox(
                  height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Mortgage Loans (USD)",
                    hintText: "Mortgage Loans (USD)",
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
                    labelText: "Credit Cards (USD)",
                    hintText: "Credit Cards (USD)",
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
                    labelText: "Debit Cards (USD)",
                    hintText: "Debit Cards (USD)",
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
                    labelText: "Wealth Advisor  (USD)",
                    hintText: "Wealth Advisor  (USD)",
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
                    hintText: "Email Addess",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.white,
                        filled: true),
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
            ],
          ),
        ),
      ),
      ),
   
    );
  }
}


// primaryContactItems
List<DropdownMenuItem<String>> get primaryContactItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("LN"),value:"LN"),
    const DropdownMenuItem(child: Text("FN"),value:"FN"),
  ];
  return menuItems;
}

// jobTitleItems
List<DropdownMenuItem<String>> get jobTitleItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Bank Credit Clerk"),value:"Bank Credit Clerk"),
    const DropdownMenuItem(child: Text("Bank Foreign-Exchange Dealer"),value:"Bank Foreign-Exchange Dealer"),
    const DropdownMenuItem(child: Text("Bank Teller"),value: "Bank Teller"),
    const DropdownMenuItem(child: Text("Bond Sales Manager"),value: "Bond Sales Manager"),
    const DropdownMenuItem(child: Text("Bond Sales Officer"),value: "Bond Sales Officer"),
    const DropdownMenuItem(child: Text("Bond Trading Manger"),value: "Bond Trading Manger"),
    const DropdownMenuItem(child: Text("Branch Manager - Insurance"),value: "Branch Manager - Insurance"),
    const DropdownMenuItem(child: Text("Branch Manager Trainee"),value: "Branch Manager Trainee"),
    const DropdownMenuItem(child: Text("Branch Manager"),value: "Branch Manager"),
    const DropdownMenuItem(child: Text("Branch Review Specialist"),value: "Branch Review Specialist"),
    const DropdownMenuItem(child: Text("Branch Review Team Lead"),value: "Branch Review Team Lead"),
    const DropdownMenuItem(child: Text("Branch Service Respresntative I"),value: "Branch Service Respresntative I"),
    const DropdownMenuItem(child: Text("Branch Service Respresntative lil/option>"),value: "Branch Service Respresntative lil/option>"),
    const DropdownMenuItem(child: Text("Branch Service Respresntative III"),value: "Branch Service Respresntative III"),
    const DropdownMenuItem(child: Text("Branch Service Specialist"),value: "Branch Service Specialist"),
    const DropdownMenuItem(child: Text("Budget Analyst I"),value: "Budget Analyst I"),
    const DropdownMenuItem(child: Text("Budget Analyst II"),value: "Budget Analyst II"),
    const DropdownMenuItem(child: Text("Budget Analyst III"),value: "Budget Analyst III"),
    const DropdownMenuItem(child: Text("Budget Analyst Iv"),value: "Budget Analyst Iv"),
    const DropdownMenuItem(child: Text("Budgeting Supervisor I"),value: "Budgeting Supervisor I"),
    const DropdownMenuItem(child: Text("Budgeting Supervisor II"),value: "Budgeting Supervisor II"),
    const DropdownMenuItem(child: Text("Budgeting Supervisor III"),value: "Budgeting Supervisor III"),
    const DropdownMenuItem(child: Text("Business Banking Development Officers I"),value: "Business Banking Development Officers I"),
    const DropdownMenuItem(child: Text("Business Banking Manger I, II"),value: "Business Banking Manger I, II"),
    const DropdownMenuItem(child: Text("Business Banking Manger II"),value: "Business Banking Manger II"),
    const DropdownMenuItem(child: Text("Business Development Officer"),value: "Business Development Officer"),
    const DropdownMenuItem(child: Text("Business Development Officer (Select Customer) Senior"),value: "Business Development Officer (Select Customer) Senior"),
    const DropdownMenuItem(child: Text("Business Systems Executive"),value: "Business Systems Executive"),
    const DropdownMenuItem(child: Text("Business Systems Manager"),value: "Business Systems Manager"),
    const DropdownMenuItem(child: Text("Business Systems Officer"),value: "Business Systems Officer"),
    const DropdownMenuItem(child: Text("Cash Management Manger"),value: "Cash Management Manger"),
    const DropdownMenuItem(child: Text("Cash Management Officer I"),value: "Cash Management Officer I"),
    const DropdownMenuItem(child: Text("Cash Management Service Manager"),value: "Cash Management Service Manager"),
    const DropdownMenuItem(child: Text("Cash Management Service Representative I"),value: "Cash Management Service Representative I"),
    const DropdownMenuItem(child: Text("Cash Management Service Representative II"),value: "Cash Management Service Representative II"),
    const DropdownMenuItem(child: Text("Cash Management Service Representative III"),value: "Cash Management Service Representative III"),
    const DropdownMenuItem(child: Text("Cash Management Service Supervisor"),value: "Cash Management Service Supervisor"),
    const DropdownMenuItem(child: Text("Check Collections Manager"),value: "Check Collections Manager"),
    const DropdownMenuItem(child: Text("Check Processing Manager"),value: "Check Processing Manager"),
    const DropdownMenuItem(child: Text("Check Processor"),value: "Check Processor"),
    const DropdownMenuItem(child: Text("Check / Debit Card Business Manager"),value: "Check / Debit Card Business Manager"),
    const DropdownMenuItem(child: Text("Chief Lending Officer Client Services Representative"),value: "Chief Lending Officer Client Services Representative"),
    const DropdownMenuItem(child: Text("Collateral Appraiser I, II"),value: "Collateral Appraiser I, II"),
    const DropdownMenuItem(child: Text("Collateral Appraiser II"),value: "Collateral Appraiser II"),
    const DropdownMenuItem(child: Text("Collateral Manager"),value: "Collateral Manager"),
    const DropdownMenuItem(child: Text("Collections Representative I"),value: "Collections Representative I"),
    const DropdownMenuItem(child: Text("Collections Representative II"),value: "Collections Representative II"),
    const DropdownMenuItem(child: Text("Collections Representative III"),value: "Collections Representative III"),
    const DropdownMenuItem(child: Text("Commercial Credit Analyst I"),value: "Commercial Credit Analyst I"),
    const DropdownMenuItem(child: Text("Commercial Credit Analyst II"),value: "Commercial Credit Analyst II"),
    const DropdownMenuItem(child: Text("Commercial Credit Analyst III"),value: "Commercial Credit Analyst III"),
    const DropdownMenuItem(child: Text("Commercial Loan Officer"),value: "Commercial Loan Officer"),
    const DropdownMenuItem(child: Text("Float Manager"),value: "Float Manager"),
    const DropdownMenuItem(child: Text("Floor Banker"),value: "Floor Banker"),
    const DropdownMenuItem(child: Text("Head Bank Teller"),value: "Head Bank Teller"),
    const DropdownMenuItem(child: Text("Loan Officer"),value: "Loan Officer"),
    const DropdownMenuItem(child: Text("Mortgage Originator"),value: "Mortgage Originator"),
    const DropdownMenuItem(child: Text("Mortgage Payment Processing Clerk"),value: "Mortgage Payment Processing Clerk"),
    const DropdownMenuItem(child: Text("Mortgage Processor"),value: "Mortgage Processor"),
    const DropdownMenuItem(child: Text("Mortgage Underwriter"),value: "Mortgage Underwriter"),
    const DropdownMenuItem(child: Text("Operations"),value: "Operations"),
    const DropdownMenuItem(child: Text("Personal Loan Officer"),value: "Personal Loan Officer"),








  ];
  return menuItems;
}

// Total Asset Items
List<DropdownMenuItem<String>> get totalAssetItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Small - <= 290 Million USD"), value:"Small - <= 290 Million USD"),
    const DropdownMenuItem(child: Text("Intermediate - 290 Million USD - 1.16 Billion USD"), value:"Intermediate - 290 Million USD - 1.16 Billion USD"),
    const DropdownMenuItem(child: Text("Large - 1.16Billion USD =>"), value: "Large - 1.16Billion USD =>"),
  ];
  return menuItems;
}

// Dailt Trade
List<DropdownMenuItem<String>> get dailyTradeItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("10,000 < trans p/day"),value:"10,000 < trans p/day"),
    const DropdownMenuItem(child: Text("10,000 - 30,000 trans p/day"),value:"10,000 - 30,000 trans p/day"),
    const DropdownMenuItem(child: Text("30,000 - 50,000 trans p/day"),value: "30,000 - 50,000 trans p/day"),
    const DropdownMenuItem(child: Text("50,000 - 1,000,000 trans p/day"),value: "50,000 - 1,000,000 trans p/day"),
    const DropdownMenuItem(child: Text("1,000,000>trans p/day"),value: "1,000,000>trans p/day"),
  ];
  return menuItems;
}