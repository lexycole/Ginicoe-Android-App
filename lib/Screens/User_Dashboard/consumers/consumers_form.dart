    import 'package:flutter/material.dart';
    import '../user_dashboard.dart';
    import 'package:google_fonts/google_fonts.dart';
    import '../widgets/style.dart';
    import '../widgets/constants.dart';
    import '../widgets/date_picker.dart';

  void setState(Null Function() param0) {
  }

  class ConsumersForm extends StatefulWidget {
    const ConsumersForm({Key? key}) : super(key: key);

    @override
    ConsumersFormState createState() => ConsumersFormState();
  }

class ConsumersFormState extends State<ConsumersForm> {
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

        
    DateTime _selectedDate = DateTime.now();
    TextEditingController _controller = TextEditingController();


@override
Widget build(BuildContext context) {
  // return WillPopScope(
      // onWillPop: () { _moveToScreen2(context); },
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
        title: const Text('Consumers Form'),
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
                  Text("Consumers Form",
                    style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
                const SizedBox (
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
                          DropdownButtonFormField(
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
                              validator: (value) => value == null ? "Who is the Primary contact?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('Who is the Primary contact ?'),
                              items: primaryContactItems
                              ),
                            const SizedBox(
                                height: 15,
                              ),
                   TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "What is your My Nickname?",
                        hintText: "What is your My Nickname?",
                        border: OutlineInputBorder(
                        borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                        const SizedBox(
                          height: 15,
                        ),
                          const PickDate(),
                          const SizedBox(
                                height: 15,
                            ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "What is your Social Security Number?",
                                hintText: "What is your Social Security Number?",
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
                                labelText: "Verify Social Security Number?",
                                hintText: "Verify Social Security Number?",
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
                                  Text("Do you use a Credit Privacy Number or Credit Protection Number or Credit Profile Number?")
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
                                labelText: "What is your Credit Privacy Number?",
                                hintText: "What is your Credit Privacy Number?",
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
                                      Text("Are you a U.S. Veteran?")
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
                                labelText: "What is your House Address?",
                                hintText: "What is your House Address?",
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
                        labelText: "What is your Puerto Rico Only?",
                        hintText: "What is your Puerto Rico Only?",
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
                              validator: (value) => value == null ? "What is your House type?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What is your House type?'),
                              items: houseTypeItems
                              ), 
                            const SizedBox(
                                height: 15,
                              ),
                         TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "How many floors are in your building?",
                                hintText: "How many floors are in your building?",
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
                              labelText: "What is your Apartment Number?",
                              hintText: "What is your Apartment Number?",
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
                        labelText: "What Floor is your apartment located on?",
                        hintText: "What Floor is your apartment located on?",
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
                        labelText: "What is your Room Number?",
                        hintText: "What is your Room Number?",
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
                        labelText: "What is your Bed Number?",
                        hintText: "What is your Bed Number?",
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
                        labelText: "What is your City?",
                        hintText: "What is your City?",
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
                        labelText: "What is your State?",
                        hintText: "What is your State?",
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
                        labelText: "What is your Congressional District?",
                        hintText: "What is your Congressional District?",
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
                        labelText: "What is zip + four",
                        hintText: "What is zip + four",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                    Text("Have you lived at this address for 2 years or more?")
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
                                labelText: "What was your Previous House Address?",
                                hintText: "What was your Previous House Address?",
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
                                labelText: "What was your previous Puerto Rico Only?",
                                hintText: "What was your previous Puerto Rico Only?",
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
                                labelText: "What was your previous Puerto Rico Only?",
                                hintText: "What was your previous Puerto Rico Only?",
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
                                labelText: "What was your previous City?",
                                hintText: "What was your previous City?",
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
                                labelText: "What was your previous State?",
                                hintText: "What was your previous State?",
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
                                labelText: "What was your Zip + four?",
                                hintText: "What was your Zip + four?",
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
                                labelText: "What is your Area code?",
                                hintText: "What is your Area code?",
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
                                labelText: "What is your Mobile number?",
                                hintText: "What is your Mobile number?",
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
                                labelText: "What is your Area code?",
                                hintText: "What is your Area code?",
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
                                labelText: "What is your Alternate Number?",
                                hintText: "What is your Alternate Number?",
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
                                labelText: "What is your E-mail address?",
                                hintText: "What is your E-mail address?",
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
                              validator: (value) => value == null ? "What is Sex assigned at Birth?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What is Sex assigned at Birth?'),
                              items: sexBirthItems
                        ),
                            const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What is Your legal sex?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What is Your legal sex?'),
                              items: legalSexItems
                              ),
                            const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What Gender do you self-identify as today?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What Gender do you self-identify as today?'),
                              items: genderItems
                              ),
                            const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What Race do you most see yourself as today?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What Race do you most see yourself as today?'),
                              items: raceItemsOne
                              ),
                            const SizedBox(
                                height: 15,
                              ),
                              Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("What complexion or hue or pigmentation do others most see your face today?")
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
                              validator: (value) => value == null ? "Complexion or hue or pigmentation?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('Complexion or hue or pigmentation?'),
                              items: complexionItemsOne
                              ),
                            const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What is your current Marital Status?" : null,
                              dropdownColor: kPrimaryColor,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              hint: const Text('What is your current Marital Status?'),
                              items: martialStatusItems
                              ),
                            const SizedBox(
                                height: 15,
                              ),
                            TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "What is your Height today?",
                                    hintText: "What is your Height today?",
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
                                    labelText: "What is your Weight today?",
                                    hintText: "What is your Weight today?",
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
                                  Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Looking out the front door of your Apartment, Duplex, Condo, Co-Op, Correctional Facilities, Four-Plex, Group Homes, Health Care Facility bed, House, Military Base bunk, Mobile / Trailer Home, On-Campus Student Housing Dormitory Room, Project’s Apartment, Room, Shelter’s bed, etc.")
                                        ]
                                      ),
                                    )
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
                                          Text("what race are your nearest neighbors to the right of you?")
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
                                    validator: (value) => value == null ? "what race are your nearest neighbors to the right of you?" : null,
                                    dropdownColor: Colors.white,
                                    value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    hint: const Text('what race are your nearest neighbors to the right of you?'),
                                    items: complexionItemsTwo
                                    ),    
                                      const SizedBox(
                                        height: 15,
                                      ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("What is the last name of the head of household of your nearest neighbor to the right?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is the last name of the head of household of your nearest neighbor to the right?",
                                      hintText: "What is the last name of the head of household of your nearest neighbor to the right?",
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
                                Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Please provide the unique GUID of any member of your nearest neighbor to the right of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Please provide the unique GUID of any member of your nearest neighbor to the right of you?",
                                      hintText: "Please provide the unique GUID of any member of your nearest neighbor to the right of you?",
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
                                Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("Looking out your front door what is the address of your nearest neighbors to the right of you?")
                                    ]
                                  ),
                                )
                              ],
                          ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "House Address",
                                      hintText: "House Address",
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
                            Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("For Puerto Rico Only: Input Urbanization Name")
                                    ]
                                  ),
                                )
                              ],
                          ),
                                 TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "For Puerto Rico Only: Input Urbanization Name",
                                      hintText: "For Puerto Rico Only: Input Urbanization Name",
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
                                      labelText: "City",
                                      hintText: "City",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                      labelText: "State",
                                      hintText: "State",
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
                                      labelText: "Zip + four",
                                      hintText: "Zip + four",
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
                            Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("Looking out the front door of your Apartment, Duplex, Condo, Co-Op, Correctional Facilities, Four-Plex, Group Homes, Health Care Facility bed, House, Military Base bunk, Mobile / Trailer Home, On-Campus Student Housing Dormitory Room, Project’s Apartment, Room, Shelter’s bed, etc.")
                                    ]
                                  ),
                                )
                              ],
                          ),
                          const SizedBox(
                            height: 15,
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
                                    validator: (value) => value == null ? "what race are your nearest neighbors to the left of you?" : null,
                                    dropdownColor: Colors.white,
                                    value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    hint: const Text('what race are your nearest neighbors to the right of you?'),
                                    items: complexionItemsThree
                                    ),
                            const SizedBox(
                              height: 15,
                              ),
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("What is the last name of the head of household of your nearest neighbor to the left?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is the last name of the head of household of your nearest neighbor to the left?",
                                      hintText: "What is the last name of the head of household of your nearest neighbor to the left?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Please provide the unique GUID of any member of your nearest neighbor to the left of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Please provide the unique GUID of any member of your nearest neighbor to the left of you?",
                                      hintText: "Please provide the unique GUID of any member of your nearest neighbor to the left of you?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Looking out your front door what is the address of your nearest neighbors to the left of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "House Address",
                                      hintText: "House Address",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("For Puerto Rico Only: Input Urbanization Name")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                 TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "For Puerto Rico Only: Input Urbanization Name",
                                      hintText: "For Puerto Rico Only: Input Urbanization Name",
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
                                      labelText: "City",
                                      hintText: "City",
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
                                      labelText: "State",
                                      hintText: "State",
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
                                      labelText: "Zip + four",
                                      hintText: "Zip + four",
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
                            Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("Looking out the front door of your Apartment, Duplex, Condo, Co-Op, Correctional Facilities, Four-Plex, Group Homes, Health Care Facility bed, House, Military Base bunk, Mobile / Trailer Home, On-Campus Student Housing Dormitory Room, Project’s Apartment, Room, Shelter’s bed, etc.")
                                    ]
                                  ),
                                )
                              ],
                          ),
                          const SizedBox(
                            height: 15,
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
                                    validator: (value) => value == null ? "what race are your nearest neighbors to the left of you?" : null,
                                    dropdownColor: Colors.white,
                                    value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    hint: const Text('what race are your nearest neighbors to the right of you?'),
                                    items: complexionItemsFour
                                    ),
                            const SizedBox(
                              height: 15,
                              ),
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("What is the last name of the head of household of your nearest neighbor in front of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is the last name of the head of household of your nearest neighbor in front of you?",
                                      hintText: "What is the last name of the head of household of your nearest neighbor in front of you?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Please provide the unique GUID of any member of your nearest neighbor in the front of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Please provide the unique GUID of any member of your nearest neighbor in the front of you?",
                                      hintText: "Please provide the unique GUID of any member of your nearest neighbor in the front of you?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Looking out your front door what is the address of your nearest neighbors in front of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "House Address",
                                      hintText: "House Address",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("For Puerto Rico Only: Input Urbanization Name")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                 TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "For Puerto Rico Only: Input Urbanization Name",
                                      hintText: "For Puerto Rico Only: Input Urbanization Name",
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
                                      labelText: "City",
                                      hintText: "City",
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
                                      labelText: "State",
                                      hintText: "State",
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
                                      labelText: "Zip + four",
                                      hintText: "Zip + four",
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
                          Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Text("Looking out the front door of your Apartment, Duplex, Condo, Co-Op, Correctional Facilities, Four-Plex, Group Homes, Health Care Facility bed, House, Military Base bunk, Mobile / Trailer Home, On-Campus Student Housing Dormitory Room, Project’s Apartment, Room, Shelter’s bed, etc.")
                                    ]
                                  ),
                                )
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
                                      Text("what race are your nearest neighbors in back of you?")
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
                                    validator: (value) => value == null ? "what race are your nearest neighbors in back of you?" : null,
                                    dropdownColor: Colors.white,
                                    value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    hint: const Text('what race are your nearest neighbors in back of you?'),
                                    items: raceItemsTwo
                                    ),
                            const SizedBox(
                              height: 15,
                              ),
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("What is the last name of the head of household of your nearest neighbor in back of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is the last name of the head of household of your nearest neighbor in back of you?",
                                      hintText: "What is the last name of the head of household of your nearest neighbor in back of you?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Please provide the unique GUID of any member of your nearest neighbor in the back of you?")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Please provide the unique GUID of any member of your nearest neighbor in the back of you?",
                                      hintText: "Please provide the unique GUID of any member of your nearest neighbor in the back of you?",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("Looking out the front door of your Apartment, Duplex, Condo, Co-Op, Correctional Facilities, Four-Plex, Group Homes, Health Care Facility bed, House, Military Base bunk, Mobile / Trailer Home, On-Campus Student Housing Dormitory Room, Project’s Apartment, Room, Shelter’s bed, etc.")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "House Address",
                                      hintText: "House Address",
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
                              Row(
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text("For Puerto Rico Only: Input Urbanization Name")
                                        ]
                                      ),
                                    )
                                  ],
                              ),
                                 TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "For Puerto Rico Only: Input Urbanization Name",
                                      hintText: "For Puerto Rico Only: Input Urbanization Name",
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
                                      labelText: "City",
                                      hintText: "City",
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
                                      labelText: "State",
                                      hintText: "State",
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
                                      labelText: "Zip + four",
                                      hintText: "Zip + four",
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
        // 01. Employment Information
                        Row(children: [
                        Text("Employment Information",
                            style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                            ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                            TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is your Employer’s company name?",
                                      hintText: "What is your Employer’s company name?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is your job title?",
                                      hintText: "What is your job title?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is your Employee Identification Number?",
                                      hintText: "What is your Employee Identification Number?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                const SizedBox(height: 15),
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
                                    validator: (value) => value == null ? " What was your annual income last year?" : null,
                                    dropdownColor: Colors.white,
                                    value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    hint: const Text(' What was your annual income last year?'),
                                    items: annualIncomeItems
                                    ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Are you an active member of a Trade or Labor Union?",
                                      hintText: "Are you an active member of a Trade or Labor Union?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "what is the name of your Trade or Labor Union?",
                                      hintText: "what is the name of your Trade or Labor Union?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "What is your individual trade or union membership number?",
                                      hintText: "What is your individual trade or union membership number?",
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
        // 02. I want to protect these charge cards
                            Row(children: [
                            Text("I Want To Protect These Charge Cards",
                            style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
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
                                      Text("Please list each and every charge card, one at a time that you wish Ginicoe to Protect.",)
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
                                      labelText: "MasterCard",
                                      hintText: "MasterCard",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Visa",
                                      hintText: "Visa",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "American Express",
                                      hintText: "American Express",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Discover",
                                      hintText: "Discover",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Number",
                                      hintText: "Card Number",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card No.1 Nickname",
                                      hintText: "Card No.1 Nickname",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s first name",
                                      hintText: "Primary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s MI",
                                      hintText: "Primary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s last name",
                                      hintText: "Primary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Column(
                                          children: const [
                                            Text("Does this card have a secondary authorized user?")
                                          ]
                                        ),
                                      )
                                    ],
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Does this card have a secondary authorized user?",
                                      hintText: "Does this card have a secondary authorized user?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s first name",
                                      hintText: "Secondary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s MI",
                                      hintText: "Secondary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s last name",
                                      hintText: "Secondary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                      children: [
                                        Flexible(
                                          child: Column(
                                            children: const [
                                            Text("What is the relationship of the secondary card holder to the primary card holder",)
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
                                        validator: (value) => value == null ? "What is the relationship of the secondary card holder to the primary card holder" : null,
                                        dropdownColor: Colors.white,
                                        value: selectedValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        hint: const Text('What is the relationship of the secondary card holder to the primary card holder'),
                                        items: relationshipItems
                                        ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Issuer’s Name,",
                                      hintText: "Card Issuer’s Name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                Row(
                                      children: [
                                          Flexible(
                                            child: Column(
                                              children: const [
                                              Text("Expiry")
                                              ]
                                            ),
                                          )
                                      ],
                                  ),
                                  const PickDate(),
                                  const SizedBox(height: 15),
                                // Record another card 01
                                 Row(
                                children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                      Text("Please list each and every charge card, one at a time that you wish Ginicoe to Protect.",)
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
                                      labelText: "MasterCard",
                                      hintText: "MasterCard",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Visa",
                                      hintText: "Visa",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "American Express",
                                      hintText: "American Express",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Discover",
                                      hintText: "Discover",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Number",
                                      hintText: "Card Number",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card No.1 Nickname",
                                      hintText: "Card No.1 Nickname",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s first name",
                                      hintText: "Primary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s MI",
                                      hintText: "Primary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s last name",
                                      hintText: "Primary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Column(
                                          children: const [
                                            Text("Does this card have a secondary authorized user?")
                                          ]
                                        ),
                                      )
                                    ],
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Does this card have a secondary authorized user?",
                                      hintText: "Does this card have a secondary authorized user?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s first name",
                                      hintText: "Secondary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s MI",
                                      hintText: "Secondary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s last name",
                                      hintText: "Secondary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                      children: [
                                        Flexible(
                                          child: Column(
                                            children: const [
                                            Text("What is the relationship of the secondary card holder to the primary card holder",)
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
                                        validator: (value) => value == null ? "What is the relationship of the secondary card holder to the primary card holder" : null,
                                        dropdownColor: Colors.white,
                                        value: selectedValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        hint: const Text('What is the relationship of the secondary card holder to the primary card holder'),
                                        items: relationshipItems
                                        ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Issuer’s Name,",
                                      hintText: "Card Issuer’s Name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                Row(
                                      children: [
                                          Flexible(
                                            child: Column(
                                              children: const [
                                              Text("Expiry")
                                              ]
                                            ),
                                          )
                                      ],
                                  ),
                                  const PickDate(),
                                  // Record Another card 03.
                                Row(
                                children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                      Text("Please list each and every charge card, one at a time that you wish Ginicoe to Protect.",)
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
                                      labelText: "MasterCard",
                                      hintText: "MasterCard",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Visa",
                                      hintText: "Visa",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "American Express",
                                      hintText: "American Express",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                              const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Discover",
                                      hintText: "Discover",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Number",
                                      hintText: "Card Number",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card No.1 Nickname",
                                      hintText: "Card No.1 Nickname",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s first name",
                                      hintText: "Primary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s MI",
                                      hintText: "Primary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Primary card holder’s last name",
                                      hintText: "Primary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Column(
                                          children: const [
                                            Text("Does this card have a secondary authorized user?")
                                          ]
                                        ),
                                      )
                                    ],
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Does this card have a secondary authorized user?",
                                      hintText: "Does this card have a secondary authorized user?",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s first name",
                                      hintText: "Secondary card holder’s first name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s MI",
                                      hintText: "Secondary card holder’s MI",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Secondary card holder’s last name",
                                      hintText: "Secondary card holder’s last name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                      children: [
                                        Flexible(
                                          child: Column(
                                            children: const [
                                            Text("What is the relationship of the secondary card holder to the primary card holder",)
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
                                        validator: (value) => value == null ? "What is the relationship of the secondary card holder to the primary card holder" : null,
                                        dropdownColor: Colors.white,
                                        value: selectedValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        hint: const Text('What is the relationship of the secondary card holder to the primary card holder'),
                                        items: relationshipItems
                                        ),
                                const SizedBox(height: 15),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Card Issuer’s Name,",
                                      hintText: "Card Issuer’s Name",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                          borderRadius: BorderRadius.circular(20)),
                                          fillColor: Colors.white,
                                          filled: true
                                          ),
                                  ),
                                  const SizedBox(height: 15),
                                Row(
                                      children: [
                                          Flexible(
                                            child: Column(
                                              children: const [
                                              Text("Expiry")
                                              ]
                                            ),
                                          )
                                      ],
                                  ),
                                  const PickDate(),
                 const SizedBox(
                                height: 15,
                              ),
                    // Facial Images Upload
                    // Head & Face Info
                      Row(
                          children: [
                                Text("I Want To Protect These Charge Cards",
                                style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                                ],
                            ),
                            Row(children: [
                                Text("Head & Face Info",
                                style: GoogleFonts.roboto(
                                fontSize: 13, fontWeight: FontWeight.bold)),
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
                                  Text("What best describe your face as you see it?",)
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
                              validator: (value) => value == null ? "What is the relationship of the secondary card holder to the primary card holder" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('What is the relationship of the secondary card holder to the primary card holder'),
                              items: faceItems
                             ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                      Text("What is your natural eye color?",)
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
                              validator: (value) => value == null ? "What is your natural eye color?" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('What is your natural eye color?'),
                              items: eyeColorItems
                             ),
                              const SizedBox(
                                height: 15,
                              ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Do you require prescription eyewear?",
                                      hintText: "Do you require prescription eyewear?",
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
              // Hair
                      Row(
                          children: [
                              Text("Hair",
                                style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                                  ],
                      ),
                      const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What is your natural hair color ?" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('What is your natural hair color ?'),
                              items: naturalHairItems
                             ),
                       const SizedBox(
                                height: 15,
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
                              validator: (value) => value == null ? "What is your most popular hair style these days?" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('What is your most popular hair style these days?'),
                              items: popularHairItems
                             ),
                        const SizedBox(
                                height: 15,
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
                                validator: (value) => value == null ? "What best describes your Facial Hair as of today?" : null,
                                dropdownColor: Colors.white,
                                value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                hint: const Text('What best describes your Facial Hair as of today?'),
                                items: facialHairItems
                              ), 
                               const SizedBox(
                                height: 15,
                              ), 
              // Head Tattoos, Scars, and other distinguishing identifiers
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Head Tattoos, Scars, and other distinguishing identifiers",),
                                ]
                              )
                            )
                          ]
                        ),
                       const SizedBox(
                                height: 15,
                              ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Do you have any facial or neck or head scars?",
                              hintText: "Do you have any facial or neck or head scars?",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Please describe where your facial or neck or head scar is located?",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Please describe where your facial or neck or head scar is located?",
                              hintText: "Please describe where your facial or neck or head scar is located?",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Do you have permanent facial or neck or head tattoos [Y/N]",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Do you have permanent facial or neck or head tattoos [Y/N],",
                              hintText: "Do you have permanent facial or neck or head tattoos [Y/N],",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Describe the location of your permanent facial or neck or head tattoo",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Describe the location of your permanent facial or neck or head tattoo",
                              hintText: "Describe the location of your permanent facial or neck or head tattoo",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Please describe your permanent tattoo in detail e.g. picture of flag, colors",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Please describe your permanent tattoo in detail e.g. picture of flag, colors",
                              hintText: "Please describe your permanent tattoo in detail e.g. picture of flag, colors",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Have you ever had facial plastic surgery [Y/N]",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Have you ever had facial plastic surgery [Y/N]",
                              hintText: "Have you ever had facial plastic surgery [Y/N]",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("What was the date of your first facial plastic surgery procedure?",),
                                ]
                              )
                            )
                          ]
                        ),
                        const PickDate(),
                        const SizedBox(
                            height: 15,
                        ), 
                            const SizedBox(
                              height: 15,
                            ),      
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("How many facial plastic surgery procedures would you say you had up to today?",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "How many facial plastic surgery procedures would you say you had up to today?",
                              hintText: "How many facial plastic surgery procedures would you say you had up to today?",
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
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("What is the name of the facial plastic surgeon who performed your last surgery?",),
                                ]
                              )
                            )
                          ]
                        ),     
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "What is the name of the facial plastic surgeon who performed your last surgery?",
                              hintText: "What is the name of the facial plastic surgeon who performed your last surgery?",
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
                              labelText: "First name of surgeon",
                              hintText: "First name of surgeon",
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
                              labelText: "Last name of surgeon",
                              hintText: "Last name of surgeon",
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
                              labelText: "Office or House number",
                              hintText: "Office or House number",
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
                              labelText: "Street",
                              hintText: "Street",
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
                              labelText: "City",
                              hintText: "City",
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
                              labelText: "State",
                              hintText: "State",
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
                              labelText: "Zip + four",
                              hintText: "Zip + four",
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
                              labelText: "Telephone number of plastic surgeo",
                              hintText: "Telephone number of plastic surgeo",
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
                              labelText: "Reserved",
                              hintText: "Reserved",
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
                        Row(
                          children: [
                              Text("Twins & ….",
                                style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.bold)),
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
                                  Text("What is your dominant hand writing side?",),
                                ]
                              )
                            )
                          ]
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
                                  validator: (value) => value == null ? "What is your dominant hand writing side?" : null,
                                  dropdownColor: Colors.white,
                                  value: selectedValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                  hint: const Text('What is your dominant hand writing side?'),
                                  items: handWritingItems
                                ),
                            const SizedBox(
                                height: 15,
                              ),
                         Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Are you a",),
                                ]
                              )
                            )
                          ]
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
                              validator: (value) => value == null ? "Are you a" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('Are you a'),
                              items: areYouItems
                             ),
                        const SizedBox(
                                height: 15,
                              ),
                        Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("What best describes your Facial Hair as of today?",),
                                ]
                              )
                            )
                          ]
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
                              validator: (value) => value == null ? "What best describes your Facial Hair as of today?" : null,
                              dropdownColor: Colors.white,
                               value: selectedValue,
                                onChanged: (String? newValue) {
                                   setState(() {
                                     selectedValue = newValue!;
                                   });
                                 },
                              hint: const Text('What best describes your Facial Hair as of today?'),
                              items: todayFacialHairItems
                             ),
                        const SizedBox(
                            height: 15,
                          ), 
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "What is your twin’s first name?",
                              hintText: "What is your twin’s first name?",
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
                              labelText: "What is your twin’s MI?",
                              hintText: "What is your twin’s MI?",
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
                              labelText: "What is your twin’s last name?",
                              hintText: "What is your twin’s last name?",
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
                      Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Please tell us what best describes the difference between you and your twin. Physical Differences",),
                                ]
                              )
                            )
                          ]
                      ), 
                      Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("My Birthmarks is located on my [pick from below] and my twins is located [pick from below]",),
                                ]
                              )
                            )
                          ]
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
                            validator: (value) => value == null ? "My Birthmarks is located on my [pick from below] and my twins is located [pick from below]" : null,
                            dropdownColor: Colors.white,
                            value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                            hint: const Text('My Birthmarks is located on my [pick from below] and my twins is located [pick from below]'),
                            items: birthmarksItems
                          ),
                          const SizedBox(
                              height: 15,
                              ),
                         Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("My freckles are located on my[pick from below] and my twins is located [pick from below]",),
                                ]
                              )
                            )
                          ]
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
                                validator: (value) => value == null ? "My Birthmarks is located on my [pick from below] and my twins is located [pick from below]" : null,
                                dropdownColor: Colors.white,
                                value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                hint: const Text('My freckles are located on my[pick from below] and my twins is located [pick from below]'),
                                items: frecklesItems
                              ),
                              const SizedBox(
                              height: 15,
                              ), 
                            Row( children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                        Text("My moles are located on my[pick from below] and my twins is located [pick from below]",),
                                    ]
                                  )
                                )
                              ]
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
                          validator: (value) => value == null ? "My moles is located on my [pick from below] and my twins is located [pick from below]" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('My moles are located on my[pick from below] and my twins is located [pick from below]'),
                          items: molesItems
                        ),
                        const SizedBox(
                              height: 15,
                              ),
                        Row( children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                        Text("My hair is different from my twin’s because [pick from below]",),
                                    ]
                                  )
                                )
                              ]
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
                          validator: (value) => value == null ? "My hair is different from my twin’s because [pick from below]" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('My hair is different from my twin’s because [pick from below]'),
                          items: twinHairItems
                      ),
                       const SizedBox(
                              height: 15,
                              ),
                        Row( children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                        Text("My natural eye color is [pick from below] and my twin’s natural eye color is [pick from below]",),
                                    ]
                                  )
                                )
                              ]
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
                          validator: (value) => value == null ? "My natural eye color is [pick from below] and my twin’s natural eye color is [pick from below]" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('My natural eye color is [pick from below] and my twin’s natural eye color is [pick from below]'),
                          items: twinNaturalEyeColorItems
                      ),
                      const SizedBox(
                            height: 15,
                        ),
                  Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("My current hair color is [pick from below] and my twin’s current hair color is [pick from below]",),
                              ]
                            )
                          )
                        ]
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
                          validator: (value) => value == null ? "My current hair color is [pick from below] and my twin’s current hair color is [pick from below]" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('My current hair color is [pick from below] and my twin’s current hair color is [pick from below]'),
                          items: twinCurrentHairColorItems
                      ),
                       const SizedBox(
                              height: 15,
                              ),
                        Row(children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                        Text("Personality Differences between you and your twin.",),
                                    ]
                                  )
                                )
                            ]
                          ),
                           Row( children: [
                                    Flexible(
                                      child: Column(
                                        children: const [
                                        Text("Please select the number that best completes the sentence.",),
                                    ]
                                  )
                                )
                              ]
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
                          validator: (value) => value == null ? "My personality is [pick from below] and my twin’s personality is [pick from below]" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('My personality is [pick from below] and my twin’s personality is [pick from below]'),
                          items: twinPersonalityItems
                      ),
                      const SizedBox(
                            height: 15,
                        ),  
                      Row(
                      children: [
                        Text("Medical Info",
                          style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ),     
                    const SizedBox(
                            height: 15,
                          ), 
                      Row( children: [
                            Flexible(
                              child: Column(
                                children: const [
                                Text("Emergency contact in case of sickness or death",),
                              ]
                          )
                        )
                      ]
                    ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Emergency contact in case of sickness or death",
                              hintText: "Emergency contact in case of sickness or death",
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
                              labelText: "Office or House number",
                              hintText: "Office or House number",
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
                                labelText: "Street",
                                hintText: "Street",
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
                              labelText: "City",
                              hintText: "City",
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
                              labelText: "Country",
                              hintText: "Country",
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
                              labelText: "State",
                              hintText: "State",
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
                              labelText: "Zip + four",
                              hintText: "Zip + four",
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
                              labelText: "Ginicoe ID#",
                              hintText: "Ginicoe ID#",
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
                    Row(
                      children: [
                        Text("Family & Medical History",
                          style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ), 
                    const SizedBox(
                            height: 15,
                          ), 
                    TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "How many brothers do you have living?",
                              hintText: "How many brothers do you have living?",
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
                                  labelText: "What is your oldest brother’s first name?",
                                  hintText: "What is your oldest brother’s first name?",
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
                                labelText: "How many sisters do you have living?",
                                hintText: "How many sisters do you have living?",
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
                                  labelText: "What is your youngest sister’s last name?",
                                  hintText: "What is your youngest sister’s last name?",
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
                                  labelText: "What is your place of birth city/state/country",
                                  hintText: "What is your place of birth city/state/country",
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
                         Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("What is the name of the hospital that you were born?",),
                              ]
                            )
                          )
                        ]
                        ),
                        TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "What is the name of the hospital that you were born?",
                                  hintText: "What is the name of the hospital that you were born?",
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
                         Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("If no hospital, what is the name of the mid-wife?",),
                              ]
                            )
                          )
                        ]
                        ),
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "If no hospital, what is the name of the mid-wife?",
                                  hintText: "If no hospital, what is the name of the mid-wife?",
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
                                  labelText: "First name of mid-wife",
                                  hintText: "First name of mid-wife",
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
                                    labelText: "Last name of mid-wife",
                                    hintText: "Last name of mid-wife",
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
                         Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("If no mid-wife where was the exact location of the first responder for your birth?",),
                              ]
                            )
                          )
                        ]
                        ),
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "ex: highway 10 and route 19",
                                  hintText: "ex: highway 10 and route 19",
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
                         Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("Street, highway, bridge, tunnel, or please describe in detail. If Not a Hospital, then what was the address of your birth?",),
                              ]
                            )
                          )
                          ]
                        ),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "If Not a Hospital, then what was the address of your birth?",
                                hintText: "If Not a Hospital, then what was the address of your birth?",
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
                                labelText: "Office or House number",
                                hintText: "Office or House number",
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
                                labelText: "Street",
                                hintText: "Street",
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
                                labelText: "City",
                                hintText: "City",
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
                                labelText: "Country",
                                hintText: "Country",
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
                                labelText: "State",
                                hintText: "State",
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
                                labelText: "Zip + four",
                                hintText: "Zip + four",
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
                         Row( children: [
                              Flexible(
                                child: Column(
                                  children: const [
                                  Text("If no address, then please describe the location in detail.",),
                                  ]
                                )
                              )
                            ]
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "If no address, then please describe the location in detail.",
                                hintText: "If no address, then please describe the location in detail.",
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
                          Row( children: [
                          Flexible(
                            child: Column(
                              children: const [
                              Text("What is your age today"),
                              ]
                            )
                          )
                        ]
                      ),
                        const PickDate(),
                        const SizedBox(
                            height: 15,
                            ),
                        Row(children: [
                            Text("VI. Travel Information",
                            style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                            ],
                        ),
                        const SizedBox(
                              height: 15,
                              ),  
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "What is your U.S. Passport number",
                                hintText: "What is your U.S. Passport number",
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
                                labelText: "What is your Alien identification card number",
                                hintText: "What is your Alien identification card number",
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
                            Row( children: [
                                  Flexible(
                                    child: Column(
                                      children: const [
                                      Text("What is the Country of issuance of your foreign government-issued document evidencing nationality or residence?"),
                                      ]
                                    )
                                  )
                                ]
                              ),
                               TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "What is the Country of issuance of your foreign government-issued document evidencing nationality or residence?",
                                hintText: "What is the Country of issuance of your foreign government-issued document evidencing nationality or residence?",
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
                                labelText: "What is your Foreign Passport number?",
                                hintText: "What is your Foreign Passport number?",
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
                                labelText: "What is the Country of Issuance?",
                                hintText: "What is the Country of Issuance?",
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
                                labelText: "What is your U.S. Visa number?",
                                hintText: "What is your U.S. Visa number?",
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
                                labelText: "What is your U.S. Visa number?",
                                hintText: "What is your U.S. Visa number?",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "u.s. permits",
                                hintText: "u.s. permits",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "u.s. government id document number",
                                hintText: "u.s. government id document numbers",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "u.s. driver’s license dl number",
                                hintText: "u.s. driver’s license dl number",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "state",
                                hintText: "state",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "foreign driver’s license country",
                                hintText: "foreign driver’s license country",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "foreign dl number",
                                hintText: "foreign dl number",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "foreign id documents",
                                hintText: "foreign id documents",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "u.s. professional or education documents",
                                hintText: "u.s. professional or education documents",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "OLD FN",
                                hintText: "OLD FN",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "Spouse old DOB",
                                hintText: "Spouse old DOB",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "Spouse old DOB",
                                hintText: "Spouse old DOB",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "Spouse old LN",
                                hintText: "Spouse old LN",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                labelText: "Spouse old MI",
                                hintText: "Spouse old MI",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "Spouse Old FN",
                                  hintText: "Spouse Old FNI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "Old MI",
                                  hintText: "Old MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "Old LN, MI",
                                  hintText: "Old LN, MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "Old DOB",
                                  hintText: "Old DOB",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Daughter’s Old FN",
                                  hintText: "1st Daughter’s Old FN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Daughter’s old MI",
                                  hintText: "1st Daughter’s old MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st daughter’s old LN",
                                  hintText: "1st daughter’s old LN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st daughter’s DOB",
                                  hintText: "1st daughter’s DOB",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Daughter’s Old FN",
                                  hintText: "2nd Daughter’s Old FN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Daughter’s old MI",
                                  hintText: "2nd Daughter’s old MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd daughter’s old LN",
                                  hintText: "2nd daughter’s old LN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd daughter’s DOB,",
                                  hintText: "2nd daughter’s DOB,",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Son’s Old FN,",
                                  hintText: "1st Son’s Old FN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Son’s old MI,",
                                  hintText: "1st Son’s old MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Son’s old LN,",
                                  hintText: "1st Son’s old LN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "1st Son’s old DOB",
                                  hintText: "1st Son’s old DOB",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Son’s Old FN",
                                  hintText: "2nd Son’s Old FN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Son’s old MI",
                                  hintText: "2nd Son’s old MI",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Son’s old LN",
                                  hintText: "2nd Son’s old LN",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
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
                                  labelText: "2nd Son’s old DOB",
                                  hintText: "2nd Son’s old DOB",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.circular(20)),
                                      fillColor: Colors.white,
                                      filled: true
                                  ),
                            ),
                          const SizedBox(
                              height: 15,
                              ),
                          Row( children: [
                                      Flexible(
                                        child: Column(
                                          children: const [
                                          Text("How did you hear about Us? Please Select",),
                                      ]
                                    )
                                  )
                                ]
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
                          validator: (value) => value == null ? "How did you hear about Us? Please Select" : null,
                          dropdownColor: Colors.white,
                          value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                          hint: const Text('How did you hear about Us? Please Select'),
                          items: hearAboutUsItems
                      ),
                      const SizedBox(
                              height: 15,
                              ),
            // Submit Button
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
    // );
  }
}


// 01. primaryContact dropdown
  List<DropdownMenuItem<String>> get primaryContactItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Mr"),value: "Mr"),
    const DropdownMenuItem(child: Text("Mrs"),value: "Mrs"),
    const DropdownMenuItem(child: Text("Jr"),value: "Jr"),
    const DropdownMenuItem(child: Text("Sr"),value: "Sr"),
    const DropdownMenuItem(child: Text("2nd"),value: "2nd"),
    const DropdownMenuItem(child: Text("3rd"),value: "3rd"),
    const DropdownMenuItem(child: Text("4th"),value: "4th"),
    const DropdownMenuItem(child: Text("5th"),value: "5th"),
    const DropdownMenuItem(child: Text("6th"),value: "6th"),
    const DropdownMenuItem(child: Text("7th"),value: "7th"),
    const DropdownMenuItem(child: Text("8th"),value: "8th"),
    const DropdownMenuItem(child: Text("9th"),value: "9th"),

  ];
  return menuItems;
}

// 02.houseType Attributes
  List<DropdownMenuItem<String>> get houseTypeItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Apartment"),value: "Apartment"),
    const DropdownMenuItem(child: Text("Duplex"),value: "Duplex"),
    const DropdownMenuItem(child: Text("Condo"),value: "Condo"),
    const DropdownMenuItem(child: Text("Co-Op"),value: "Co-Op"),
    const DropdownMenuItem(child: Text("Correctional Facilities"),value: "Correctional Facilities"),
    const DropdownMenuItem(child: Text("Four-Plex"), value: "Four-Plex"),
    const DropdownMenuItem(child: Text("Group Homes"),value: "Group Homes"),
    const DropdownMenuItem(child: Text("Health Care Facility bed"), value: "Health Care Facility bed"),
    const DropdownMenuItem(child: Text("Houses"),value: "Houses"),
    const DropdownMenuItem(child: Text("Military Base bunk, Mobile / Trailer Home"),value: "Military Base bunk, Mobile / Trailer Home"),
    const DropdownMenuItem(child: Text("On-Campus Student Housing Dormitory Room"),value: "On-Campus Student Housing Dormitory Room"),
    const DropdownMenuItem(child: Text("Project's Apartment"),value: "Project's Apartment"),
    const DropdownMenuItem(child: Text("Room"),value: "Room"),
    const DropdownMenuItem(child: Text("Shelter's bed"),value: "Shelter's bed"),
  ];
  return menuItems;
}

  // 03. sexBirth Items 
  List<DropdownMenuItem<String>> get sexBirthItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Choose Not To Disclose"),value: "Choose Not To Disclose"),
    const DropdownMenuItem(child: Text("Female"),value: "Female"),
    const DropdownMenuItem(child: Text("Intersex"),value: "Intersex"),
    const DropdownMenuItem(child: Text("Male"),value: "Male"),
    const DropdownMenuItem(child: Text("Not Recorded On Birth Certificate"),value: "Not Recorded On Birth Certificate"),
    const DropdownMenuItem(child: Text("Uncertain"),value: "Uncertain"),
    const DropdownMenuItem(child: Text("Unknown"), value:"Unknown"),

  ];
  return menuItems;
}

  // 04. Legal Sex items
  List<DropdownMenuItem<String>> get legalSexItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Female"),value: "Female"),
    const DropdownMenuItem(child: Text("Male"),value: "Male"),
    const DropdownMenuItem(child: Text("Non-Binary"),value: "Non Binary"),
    const DropdownMenuItem(child: Text("Unknown"),value: "Unknown"),
    const DropdownMenuItem(child: Text("X"),value: "X"),
  ];
  return menuItems;
}
  
  // 05. Gender items
  List<DropdownMenuItem<String>> get genderItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Androgyne"),value: "Androgyne"),
    const DropdownMenuItem(child: Text("Bi-Sexual Accept Me A Female"),value: "Bi-Sexual Accept Me A Female"),
    const DropdownMenuItem(child: Text("Bi-Sexual Accept Me A Male"),value: "Bi-Sexual Accept Me A Male"),
    const DropdownMenuItem(child: Text("Boi"),value: "Boi"),
    const DropdownMenuItem(child: Text("Butch"),value: "Butch"),
    const DropdownMenuItem(child: Text("Cisgender"),value: "Cisgender"),
    const DropdownMenuItem(child: Text("Female"),value: "Female"),
    const DropdownMenuItem(child: Text("XGay Male"),value: "XGay Male"),
    const DropdownMenuItem(child: Text("Gender Bender"),value: "Gender Bender"),
    const DropdownMenuItem(child: Text("Gender Neutrality"),value: "Gender Neutrality"),
    const DropdownMenuItem(child: Text("Gender Non-Conforming"),value: "Gender Non-Conforming"),
    const DropdownMenuItem(child: Text("Gender Queer"),value: "Gender Queer"),
    const DropdownMenuItem(child: Text("Gender Variance"),value: "Gender Variance"),
    const DropdownMenuItem(child: Text("Lesbian"),value: "Lesbian"),
    const DropdownMenuItem(child: Text("Male"),value: "Male"),
    const DropdownMenuItem(child: Text("Man"),value: "Man"),
    const DropdownMenuItem(child: Text("Non-Binary"), value: "Non-Binary"),
    const DropdownMenuItem(child: Text("Other"), value: "Other"),
    const DropdownMenuItem(child: Text("Post-Genderism"), value: "Post-Genderism"),
    const DropdownMenuItem(child: Text("Something Else"), value: "Something Else"),
    const DropdownMenuItem(child: Text("Trans Man"), value: "Trans Man"),
    const DropdownMenuItem(child: Text("Trans Woman"), value: "Trans Woman"),
    const DropdownMenuItem(child: Text("Transgender Female/Male to Female"), value: "Transgender Female/ Male to Female"),
    const DropdownMenuItem(child: Text("Transgender Male/Female to Male"), value: "Transgender Male/Female to Ma"),
    const DropdownMenuItem(child: Text("Transsexual"), value: "Transsexual"),
    const DropdownMenuItem(child: Text("Woman"), value: "Woman"),
  ];
  return menuItems;
}
  
  // 06. Race items One
  List<DropdownMenuItem<String>> get raceItemsOne{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}

    // 06. Race items Two
  List<DropdownMenuItem<String>> get raceItemsTwo{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}
  
  // 07. Complexion items One
  List<DropdownMenuItem<String>> get complexionItemsOne{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}
  // 07. Complexion items Two
  List<DropdownMenuItem<String>> get complexionItemsTwo{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}
  // 07. Complexion items Three
  List<DropdownMenuItem<String>> get complexionItemsThree{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}
  // 07. Complexion Items Four
  List<DropdownMenuItem<String>> get complexionItemsFour{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("PLAHNET53 52 (5A's & 2H's)"),value: "PLAHNET53 52 (5A's & 2H's)"),
    const DropdownMenuItem(child: Text("Pacific Islander Americans"),value: "Pacific Islander Americans"),
    const DropdownMenuItem(child: Text("LGBTQ"),value: "LGBTQ"),
    const DropdownMenuItem(child: Text("African Americans"),value: "African Americans"),
    const DropdownMenuItem(child: Text("Asian"),value: "Asian"),
    const DropdownMenuItem(child: Text("Asian Indians"),value: "Asian Indians"),
    const DropdownMenuItem(child: Text("Alaska Natives"),value: "Alaska Natives"),
    const DropdownMenuItem(child: Text("Alaska Natives Corporations"),value: "Alaska Natives Corporations"),
    const DropdownMenuItem(child: Text("Hasidic Jews"),value: "Hasidic Jews"),
    const DropdownMenuItem(child: Text("Hispanic-Americans"),value: "Hispanic-Americans"),
    const DropdownMenuItem(child: Text("Native Americans"),value: "Native Americans"),
    const DropdownMenuItem(child: Text("Ex-Offenders"),value: "Ex-Offenders"),
    const DropdownMenuItem(child: Text("Tribal entities"),value: "Tribal entities"),
    const DropdownMenuItem(child: Text("Decline"),value: "Decline"),
    const DropdownMenuItem(child: Text("Other Combination Not Described"),value: "Other Combination Not Described"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),
    const DropdownMenuItem(child: Text("White"),value: "White"),
    const DropdownMenuItem(child: Text("See 15 C.F.R S1400"),value: "See 15 C.F.R S1400"),
  ];
  return menuItems;
}
  
  // 08.martialStatus
  List<DropdownMenuItem<String>> get martialStatusItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Divorced"),value: "Divorced"),
    const DropdownMenuItem(child: Text("Domestic Partners"),value: "Domestic Partners"),
    const DropdownMenuItem(child: Text("Engaged"),value: "Engaged"),
    const DropdownMenuItem(child: Text("Married"),value: "Married"),
    const DropdownMenuItem(child: Text("Other"),value: "annual billing"),
    const DropdownMenuItem(child: Text("Separated"),value: "Separated"),
    const DropdownMenuItem(child: Text("Significant Other"),value: "Significant Other"),
    const DropdownMenuItem(child: Text("Single"),value: "Single"),
    const DropdownMenuItem(child: Text("Unknown"),value: "Unknown"),
    const DropdownMenuItem(child: Text("Widowed"),value: "Widowed"),
  ];
  return menuItems;
}
  
  // 09. annualIncome Items
 List<DropdownMenuItem<String>> get annualIncomeItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("0 - 30,0000"),value: "0 - 30,0000"),
    const DropdownMenuItem(child: Text("30,0000 - 50,000"),value: "30,0000 - 50,000"),
    const DropdownMenuItem(child: Text("50,000 - 60,000"),value: "Engaged"),
    const DropdownMenuItem(child: Text("60,000 - 75,000"),value: "Married"),
    const DropdownMenuItem(child: Text("75,000 - 90,000"),value: "annual billing"),
    const DropdownMenuItem(child: Text("90,000 - 125,000"),value: "90,000 - 125,000"),
    const DropdownMenuItem(child: Text("125,000 - 150,000"),value: "125,000 - 150,000"),
    const DropdownMenuItem(child: Text("150,000 - 200,000"),value: "150,000 - 200,000"),
    const DropdownMenuItem(child: Text("200,000 - 500,000"),value: "200,000 - 500,000"),
    const DropdownMenuItem(child: Text("500,000 - 1million"),value: "500,000 - 1million"),
    const DropdownMenuItem(child: Text("1mill+"),value: "1mill+"),
  ];
  return menuItems;
}

// 10. relationship btw secondary and primary card holder Items
 List<DropdownMenuItem<String>> get relationshipItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Boyfriend"),value: "Boyfriend"),
    const DropdownMenuItem(child: Text("Brother"),value: "Brother"),
    const DropdownMenuItem(child: Text("Daughter"),value: "Daughter"),
    const DropdownMenuItem(child: Text("Father"),value: "Father"),
    const DropdownMenuItem(child: Text("Friend"),value: "Friend"),
    const DropdownMenuItem(child: Text("Girlfriend"),value: "Girlfriend"),
    const DropdownMenuItem(child: Text("Granddaughter"),value: "Granddaughter"),
    const DropdownMenuItem(child: Text("Grandson"),value: "Grandson"),
    const DropdownMenuItem(child: Text("Husband"),value: "Husband"),
    const DropdownMenuItem(child: Text("Mother"),value: "Mother"),
    const DropdownMenuItem(child: Text("Neighbor"),value: "Neighbor"),
    const DropdownMenuItem(child: Text("Nephew"),value: "Nephew"),
    const DropdownMenuItem(child: Text("Neice"),value: "Neice"),
    const DropdownMenuItem(child: Text("Roommate"),value: "Roommate"),
    const DropdownMenuItem(child: Text("Sister"),value: "Sister"),
    const DropdownMenuItem(child: Text("Son"),value: "Son"),
    const DropdownMenuItem(child: Text("Wife"),value: "Wife"),
  ];
  return menuItems;
}

// Face Items
 List<DropdownMenuItem<String>> get faceItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("CHIN"),value: "CHIN"),
    const DropdownMenuItem(child: Text("EYES"),value: "EYES"),
    const DropdownMenuItem(child: Text("HAIR"),value: "HAIR"),
    const DropdownMenuItem(child: Text("MOUTH"),value: "MOUTH"),
    const DropdownMenuItem(child: Text("NOSE"),value: "NOSE")
  ];
  return menuItems;
}

// eyeColorItems
 List<DropdownMenuItem<String>> get eyeColorItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Amber"),value: "Amber"),
    const DropdownMenuItem(child: Text("Blue"),value: "Blue"),
    const DropdownMenuItem(child: Text("Brown"),value: "Brown"),
    const DropdownMenuItem(child: Text("Gray"),value: "Gray"),
    const DropdownMenuItem(child: Text("Green"),value: "Green"),
    const DropdownMenuItem(child: Text("Hazel"),value: "Hazel"),
    const DropdownMenuItem(child: Text("Red and violet"),value: "Red and violet"),
    const DropdownMenuItem(child: Text("Spectrum of eye color"),value: "Spectrum of eye color"),
  ];
  return menuItems;
}

// Natural Hair Color
 List<DropdownMenuItem<String>> get naturalHairItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Black"),value: "Black"),
    const DropdownMenuItem(child: Text("Blonde"),value: "Blonde"),
    const DropdownMenuItem(child: Text("Brown"),value: "Brown"),
    const DropdownMenuItem(child: Text("Brunette"),value: "Brunette"),
    const DropdownMenuItem(child: Text("Carrot top Red"),value: "Carrot top Red"),
    const DropdownMenuItem(child: Text("Dark-Brown"),value: "Dark-Brown"),
    const DropdownMenuItem(child: Text("Fiery Red"),value: "Fiery Red"),
    const DropdownMenuItem(child: Text("Grey"),value: "Grey"),
    const DropdownMenuItem(child: Text("Honey"),value: "Honey"),
    const DropdownMenuItem(child: Text("Light-Brown"),value: "Light-Brown"),
    const DropdownMenuItem(child: Text("Platinum Blonde"),value: "Platinum Blonde"),
    const DropdownMenuItem(child: Text("Sandy"),value: "Sandy"),
    const DropdownMenuItem(child: Text("Silver"),value: "Silver"),
    const DropdownMenuItem(child: Text("Strawberry red"),value: "Strawberry red"),
  ];
  return menuItems;
}

// popularHair Item
 List<DropdownMenuItem<String>> get popularHairItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("1950s"),value: "1950s"),
    const DropdownMenuItem(child: Text("Afro"),value: "Afro"),
    const DropdownMenuItem(child: Text("Asymmetric Cut"),value: "Asymmetric Cut"),
    const DropdownMenuItem(child: Text("Bald"),value: "Bald"),
    const DropdownMenuItem(child: Text("Beehive"),value: "Beehive"),
    const DropdownMenuItem(child: Text("Big Hair"),value: "Big Hair"),
    const DropdownMenuItem(child: Text("Blowout"),value: "Blowout"),
    const DropdownMenuItem(child: Text("Blunt Hair"),value: "Blunt Hair"),
    const DropdownMenuItem(child: Text("Bob Cut"),value: "Bob Cut"),
    const DropdownMenuItem(child: Text("Bouffant"),value: "Bouffant"),
    const DropdownMenuItem(child: Text("Bowl Cut"),value: "Bowl Cut"),
    const DropdownMenuItem(child: Text("Braid"),value: "Braid"),
    const DropdownMenuItem(child: Text("Brush Cut"),value: "Brush Cut"),
    const DropdownMenuItem(child: Text("Bun/Burr"),value: "Bun/Burr"),
    const DropdownMenuItem(child: Text("Business-Man Cut"),value: "Business-Man Cut"),
    const DropdownMenuItem(child: Text("Butch Cut"),value: "Butch Cut"),
    const DropdownMenuItem(child: Text("Buzz Cut"),value: "Buzz Cut"),
    const DropdownMenuItem(child: Text("Caesar Cut"),value: "Caesar Cut"),
    const DropdownMenuItem(child: Text("Chignon"),value: "Chignon"),
    const DropdownMenuItem(child: Text("Chonmage"),value: "Chonmage"),
    const DropdownMenuItem(child: Text("Comb Over"),value: "Comb Over"),
    const DropdownMenuItem(child: Text("Conk"),value: "Conk"),
    const DropdownMenuItem(child: Text("Comrows"),value: "Comrows"),
    const DropdownMenuItem(child: Text("Crew Cut"),value: "Crew Cut"),
    const DropdownMenuItem(child: Text("Cropped Hair"),value: "Cropped Hair"),
    const DropdownMenuItem(child: Text("Crown Braid"),value: "Crown Braid"),
    const DropdownMenuItem(child: Text("Croydon Facelift"),value: "Croydon Facelift"),
    const DropdownMenuItem(child: Text("Curtained Hair"),value: "Curtained Hair"),
    const DropdownMenuItem(child: Text("Devilock"),value: "Devilock"),
    const DropdownMenuItem(child: Text("Dice Bob"),value: "Dice Bob"),
    const DropdownMenuItem(child: Text("Dido Flip"),value: "Dido Flip"),
    const DropdownMenuItem(child: Text("Dread Perming"),value: "Dread Perming"),
    const DropdownMenuItem(child: Text("Dreadlocks"),value: "Dreadlocks"),
    const DropdownMenuItem(child: Text("Duck's Ass"),value: "Duck's Ass"),
    const DropdownMenuItem(child: Text("Emo Hair"),value: "Emo Hair"),
    const DropdownMenuItem(child: Text("Eton Crop"),value: "Eton Crop"),
    const DropdownMenuItem(child: Text("Fade"),value: "Fade"),
    const DropdownMenuItem(child: Text("Fallerra Hairdo"),value: "Fallerra Hairdo"),
    const DropdownMenuItem(child: Text("Fauxhawk"),value: "Fauxhawk"),
    const DropdownMenuItem(child: Text("Feathered Hair"),value: "Feathered Hair"),
    const DropdownMenuItem(child: Text("Finger Wave"),value: "Finger Wave"),
    const DropdownMenuItem(child: Text("Fishtail Hair"),value: "Fishtail Hair"),
    const DropdownMenuItem(child: Text("Flatop"),value: "Flatop"),
    const DropdownMenuItem(child: Text("Flipped Hair"),value: "Flipped Hair"),
    const DropdownMenuItem(child: Text("Fontage"),value: "Fontage"),
    const DropdownMenuItem(child: Text("French Braid"),value: "French Braid"),
    const DropdownMenuItem(child: Text("French Twist"),value: "French Twist"),
    const DropdownMenuItem(child: Text("Fringe (Bangs)"),value: "Fringe (Bangs)"),
    const DropdownMenuItem(child: Text("Frosted Tips"),value: "Frosted Tips"),
    const DropdownMenuItem(child: Text("Full Crown"),value: "Full Crown"),
    const DropdownMenuItem(child: Text("Hair Extensions"),value: "Hair Extensions"),
    const DropdownMenuItem(child: Text("Hairstyles"),value: "Hairstyles"),
    const DropdownMenuItem(child: Text("Hair Crown"),value: "Hair Crown"),
    const DropdownMenuItem(child: Text("Half Updo"),value: "Half Updo"),
    const DropdownMenuItem(child: Text("Harvard Clip"),value: "Harvard Clip"),
    const DropdownMenuItem(child: Text("High And Tight"),value: "High And Tight"),
    const DropdownMenuItem(child: Text("Highlights"),value: "Highlights"),
    const DropdownMenuItem(child: Text("Hime Cut"),value: "Hime Cut"),
    const DropdownMenuItem(child: Text("Historical Christian Hairstyles"),value: "Historical Christian Hairstyles"),
    const DropdownMenuItem(child: Text("Hi-Top Fade"),value: "Hi-Top Fade"),
    const DropdownMenuItem(child: Text("Induction Cut"),value: "Induction Cut"),
    const DropdownMenuItem(child: Text("Ivy League"),value: "Ivy League"),
    const DropdownMenuItem(child: Text("Jewfro"),value: "Jewfro"),
    const DropdownMenuItem(child: Text("Jheri Curl"),value: "Jheri Curl"),
    const DropdownMenuItem(child: Text("Layered Hair"),value: "Layered Hair"),
    const DropdownMenuItem(child: Text("Liberty Spikes"),value: "Liberty Spikes"),
    const DropdownMenuItem(child: Text("Line Up"),value: "Line Up"),
    const DropdownMenuItem(child: Text("Lob"),value: "Lob"),
    const DropdownMenuItem(child: Text("Long Hair"),value: "Long Hair"),
    const DropdownMenuItem(child: Text("Macklemore Haircut"),value: "Macklemore Haircut"),
    const DropdownMenuItem(child: Text("Marcelling"),value: "Marcelling"),
    const DropdownMenuItem(child: Text("Mod Cut"),value: "Mod Cut"),
    const DropdownMenuItem(child: Text("Mop-Top"),value: "Mop-Top"),
    const DropdownMenuItem(child: Text("Mullet"),value: "Mullet"),
    const DropdownMenuItem(child: Text("Odango"),value: "Odango"),
    const DropdownMenuItem(child: Text("Oseledets"),value: "Oseledets"),
    const DropdownMenuItem(child: Text("Pageboy"),value: "Pageboy"),
    const DropdownMenuItem(child: Text("Part in Middle"),value: "Part in Middle"),
    const DropdownMenuItem(child: Text("Part On Left"),value: "Part On Left"),
    const DropdownMenuItem(child: Text("Part On Right"),value: "Part On Right"),
    const DropdownMenuItem(child: Text("Payot/Perm"),value: "Payot/Perm"),
    const DropdownMenuItem(child: Text("Pigtails"),value: "Pigtails"),
    const DropdownMenuItem(child: Text("Pixie Cut"),value: "Pixie Cut"),
    const DropdownMenuItem(child: Text("Pompadour"),value: "Pompadour"),
    const DropdownMenuItem(child: Text("Ponytail"),value: "Ponytail"),
    const DropdownMenuItem(child: Text("Pony-Tail"),value: "Pony-Tail"),
    const DropdownMenuItem(child: Text("Professional Cut"),value: "Professional Cut"),
    const DropdownMenuItem(child: Text("Psychobilly Wedge"),value: "Psychobilly Wedge"),
    const DropdownMenuItem(child: Text("Queue"),value: "Queue"),
    const DropdownMenuItem(child: Text("Quiff"),value: "Quiff"),
    const DropdownMenuItem(child: Text("Rattail"),value: "Rattail"),
    const DropdownMenuItem(child: Text("Razor Cut"),value: "Razor Cut"),
    const DropdownMenuItem(child: Text("Recon"),value: "Recon"),
    const DropdownMenuItem(child: Text("Regular Haircut"),value: "Regular Haircut"),
    const DropdownMenuItem(child: Text("Regular Taper Cut"),value: "Regular Taper Cut"),
    const DropdownMenuItem(child: Text("Ringlets"),value: "Ringlets"),
    const DropdownMenuItem(child: Text("Semi-Bald"),value: "Semi-Bald"),
    const DropdownMenuItem(child: Text("Shag"),value: "hag"),
    const DropdownMenuItem(child: Text("Shape-Up"),value: "Shape-Up"),
    const DropdownMenuItem(child: Text("Shingle Bob"),value: "Shingle Bob"),
    const DropdownMenuItem(child: Text("Short Back And Sides"),value: "Short Back And Sides"),
    const DropdownMenuItem(child: Text("Short Brush Cut"),value: "Short Brush Cut"),
    const DropdownMenuItem(child: Text("Short Hair"),value: "Short Hair"),
    const DropdownMenuItem(child: Text("Slicked-Back"),value: "Slicked-Back"),
    const DropdownMenuItem(child: Text("Spiky Hair"),value: "Spiky Hair"),
    const DropdownMenuItem(child: Text("Standard Haircut"),value: "Standard Haircut"),
    const DropdownMenuItem(child: Text("Surfer Hair"),value: "Surfer Hair"),
    const DropdownMenuItem(child: Text("Taper Cut"),value: "Taper Cut"),
    const DropdownMenuItem(child: Text("The Rachel"),value: "The Rachel"),
    const DropdownMenuItem(child: Text("Tonsure"),value: "Tonsure"),
    const DropdownMenuItem(child: Text("Undercut"),value: "Undercut"),
    const DropdownMenuItem(child: Text("Updo"),value: "Updo"),
    const DropdownMenuItem(child: Text("Waves/Weave"),value: "Waves/Weave"),








  ];
  return menuItems;
}

// facialHairItems
 List<DropdownMenuItem<String>> get facialHairItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Beard"),value: "Beard"),
    const DropdownMenuItem(child: Text("Box Braids"),value: "Box Braids"),
    const DropdownMenuItem(child: Text("Chin Curtain"),value: "Chin Curtain"),
    const DropdownMenuItem(child: Text("Chinstrap"),value: "Chinstrap"),
    const DropdownMenuItem(child: Text("Cornrows"),value: "Cornrows"),
    const DropdownMenuItem(child: Text("Crochet Braids"),value: "Crochet Braids"),
    const DropdownMenuItem(child: Text("Designer Stubble"),value: "Designer Stubble"),
    const DropdownMenuItem(child: Text("Extension"),value: "Extension"),
    const DropdownMenuItem(child: Text("Faux Locs"),value: "Faux Locs"),
    const DropdownMenuItem(child: Text("Feeder Braids"),value: "Feeder Braids"),
    const DropdownMenuItem(child: Text("Fu Manchu"),value: "Fu Manchu"),
    const DropdownMenuItem(child: Text("Goatyee"),value: "Goatyee"),
    const DropdownMenuItem(child: Text("Gypsy Braids"),value: "Gypsy Braids"),
    const DropdownMenuItem(child: Text("Handlebar"),value: "Handlebar"),
    const DropdownMenuItem(child: Text("Horsehoe"),value: "Horsehoe"),
    const DropdownMenuItem(child: Text("Moustache"),value: "Moustache"),
    const DropdownMenuItem(child: Text("Neckbear"),value: "Neckbear"),
    const DropdownMenuItem(child: Text("Not Applicable"),value: "Not Applicable"),
    const DropdownMenuItem(child: Text("Pencil"),value: "Pencil"),
    const DropdownMenuItem(child: Text("Porkchops"),value: "Porkchops"),
    const DropdownMenuItem(child: Text("Shenandoah"),value: "Shenandoah"),
    const DropdownMenuItem(child: Text("Sideburns"),value: "Sideburns"),
    const DropdownMenuItem(child: Text("Soul Patch"),value: "Soul Patch"),
    const DropdownMenuItem(child: Text("Toothbrush"),value: "Toothbrush"),
    const DropdownMenuItem(child: Text("Twists"),value: "Twists"),
    const DropdownMenuItem(child: Text("Van Dyke"),value: "Van Dyke"),
    const DropdownMenuItem(child: Text("Walrus"),value: "Walrus"),
    const DropdownMenuItem(child: Text("Weave"),value: "Weave"),
  ];
  return menuItems;
}

// Dominant hand writing sidesList<DropdownMenuItem<String>> get facialHairItems{
  List<DropdownMenuItem<String>> get handWritingItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Ambidextrous"),value: "Ambidextrous"),
    const DropdownMenuItem(child: Text("Left-Handed"),value: "Left-Handed"),
    const DropdownMenuItem(child: Text("Right-Handed"),value: "Right-Handed")
  ];
  return menuItems;
}

// Are you a ?Items
  List<DropdownMenuItem<String>> get areYouItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Beard"),value: "Beard"),
    const DropdownMenuItem(child: Text("Box Braids"),value: "Box Braids"),
    const DropdownMenuItem(child: Text("Chin Curtain"),value: "Chin Curtain"),
    const DropdownMenuItem(child: Text("Chinstrap"),value: "Chinstrap"),
    const DropdownMenuItem(child: Text("Cornrows"),value: "Cornrows"),
    const DropdownMenuItem(child: Text("Crochet Braids"),value: "Crochet Braids"),
    const DropdownMenuItem(child: Text("Designer Stubble"),value: "Designer Stubble"),
    const DropdownMenuItem(child: Text("Extension"),value: "Extension"),
  ];
  return menuItems;
}

//  todayFacialHairItems
    List<DropdownMenuItem<String>> get todayFacialHairItems{
      List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("fraternal"),value: "fraternal"),
      const DropdownMenuItem(child: Text("fraternal"),value: "fraternal"),
    ];
    return menuItems;
  }

  // Birth Mark Items
  List<DropdownMenuItem<String>> get birthmarksItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Face Forehead"),value: "Face Forehead"),
    const DropdownMenuItem(child: Text("Face Cheek Left"),value: "Face Cheek Left"),
    const DropdownMenuItem(child: Text("Face Cheek Right"),value: "Face Cheek Right"),
    const DropdownMenuItem(child: Text("Face Chin"),value: "Face Chin"),
    const DropdownMenuItem(child: Text("Neck Left"),value: "Neck Left"),
    const DropdownMenuItem(child: Text("Neck Right"),value: "Neck Right"),
    const DropdownMenuItem(child: Text("Neck Front"),value: "Neck Front"),
    const DropdownMenuItem(child: Text("Neck Back"),value: "Neck Back"),
    const DropdownMenuItem(child: Text("Shoulder Left"),value: "Shoulder Left"),
    const DropdownMenuItem(child: Text("Shoulder Right"),value: "Shoulder Right"),
    const DropdownMenuItem(child: Text("Arm Upper Left"),value: "Arm Upper Left"),
    const DropdownMenuItem(child: Text("Arm Upper Right"),value: "Arm Upper Right"),
    const DropdownMenuItem(child: Text("Arm Lower Left"),value: "Arm Lower Left"),
    const DropdownMenuItem(child: Text("Arm Lower Right"),value: "Arm Lower Right"),
    const DropdownMenuItem(child: Text("Left Hand"),value: "Left Hand"),
    const DropdownMenuItem(child: Text("Right Hand"),value: "Right Hand"),
    const DropdownMenuItem(child: Text("Wrist Left"),value: "Wrist Left"),
    const DropdownMenuItem(child: Text("Wrist Right"),value: "Wrist Right"),
    const DropdownMenuItem(child: Text("Torso Front"),value: "Torso Front"),
    const DropdownMenuItem(child: Text("Torso Back"),value: "Torso Back"),
    const DropdownMenuItem(child: Text("Torso Left"),value: "Torso Left"),
    const DropdownMenuItem(child: Text("Torso Right"),value: "Torso Right"),
    const DropdownMenuItem(child: Text("Upper Leg Left"),value: "Upper Leg Left"),
    const DropdownMenuItem(child: Text("Upper Leg Right"),value: "Upper Leg Right"),
    const DropdownMenuItem(child: Text("Lower Leg Left"),value: "Lower Leg Left"),
    const DropdownMenuItem(child: Text("Lower Leg Right"),value: "Lower Leg Right"),
    const DropdownMenuItem(child: Text("Ankle Left"),value: "Ankle Left"),
    const DropdownMenuItem(child: Text("Ankle Right"),value: "Ankle Right"),
    const DropdownMenuItem(child: Text("Foot Left"),value: "Foot Left"),
    const DropdownMenuItem(child: Text("Foot Right"),value: "Foot Right"),
  ];
  return menuItems;
}

// Freckles Items
   List<DropdownMenuItem<String>> get frecklesItems{
      List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Face Forehead"),value: "Face Forehead"),
    const DropdownMenuItem(child: Text("Face Cheek Left"),value: "Face Cheek Left"),
    const DropdownMenuItem(child: Text("Face Cheek Right"),value: "Face Cheek Right"),
    const DropdownMenuItem(child: Text("Face Chin"),value: "Face Chin"),
    const DropdownMenuItem(child: Text("Neck Left"),value: "Neck Left"),
    const DropdownMenuItem(child: Text("Neck Right"),value: "Neck Right"),
    const DropdownMenuItem(child: Text("Neck Front"),value: "Neck Front"),
    const DropdownMenuItem(child: Text("Neck Back"),value: "Neck Back"),
    const DropdownMenuItem(child: Text("Shoulder Left"),value: "Shoulder Left"),
    const DropdownMenuItem(child: Text("Shoulder Right"),value: "Shoulder Right"),
    const DropdownMenuItem(child: Text("Arm Upper Left"),value: "Arm Upper Left"),
    const DropdownMenuItem(child: Text("Arm Upper Right"),value: "Arm Upper Right"),
    const DropdownMenuItem(child: Text("Arm Lower Left"),value: "Arm Lower Left"),
    const DropdownMenuItem(child: Text("Arm Lower Right"),value: "Arm Lower Right"),
    const DropdownMenuItem(child: Text("Left Hand"),value: "Left Hand"),
    const DropdownMenuItem(child: Text("Right Hand"),value: "Right Hand"),
    const DropdownMenuItem(child: Text("Wrist Left"),value: "Wrist Left"),
    const DropdownMenuItem(child: Text("Wrist Right"),value: "Wrist Right"),
    const DropdownMenuItem(child: Text("Torso Front"),value: "Torso Front"),
    const DropdownMenuItem(child: Text("Torso Back"),value: "Torso Back"),
    const DropdownMenuItem(child: Text("Torso Left"),value: "Torso Left"),
    const DropdownMenuItem(child: Text("Torso Right"),value: "Torso Right"),
    const DropdownMenuItem(child: Text("Upper Leg Left"),value: "Upper Leg Left"),
    const DropdownMenuItem(child: Text("Upper Leg Right"),value: "Upper Leg Right"),
    const DropdownMenuItem(child: Text("Lower Leg Left"),value: "Lower Leg Left"),
    const DropdownMenuItem(child: Text("Lower Leg Right"),value: "Lower Leg Right"),
    const DropdownMenuItem(child: Text("Ankle Left"),value: "Ankle Left"),
    const DropdownMenuItem(child: Text("Ankle Right"),value: "Ankle Right"),
    const DropdownMenuItem(child: Text("Foot Left"),value: "Foot Left"),
    const DropdownMenuItem(child: Text("Foot Right"),value: "Foot Right"),
  ];
  return menuItems;
}

// mOLE iTEMS
   List<DropdownMenuItem<String>> get molesItems{
      List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Face Forehead"),value: "Face Forehead"),
    const DropdownMenuItem(child: Text("Face Cheek Left"),value: "Face Cheek Left"),
    const DropdownMenuItem(child: Text("Face Cheek Right"),value: "Face Cheek Right"),
    const DropdownMenuItem(child: Text("Face Chin"),value: "Face Chin"),
    const DropdownMenuItem(child: Text("Neck Left"),value: "Neck Left"),
    const DropdownMenuItem(child: Text("Neck Right"),value: "Neck Right"),
    const DropdownMenuItem(child: Text("Neck Front"),value: "Neck Front"),
    const DropdownMenuItem(child: Text("Neck Back"),value: "Neck Back"),
    const DropdownMenuItem(child: Text("Shoulder Left"),value: "Shoulder Left"),
    const DropdownMenuItem(child: Text("Shoulder Right"),value: "Shoulder Right"),
    const DropdownMenuItem(child: Text("Arm Upper Left"),value: "Arm Upper Left"),
    const DropdownMenuItem(child: Text("Arm Upper Right"),value: "Arm Upper Right"),
    const DropdownMenuItem(child: Text("Arm Lower Left"),value: "Arm Lower Left"),
    const DropdownMenuItem(child: Text("Arm Lower Right"),value: "Arm Lower Right"),
    const DropdownMenuItem(child: Text("Left Hand"),value: "Left Hand"),
    const DropdownMenuItem(child: Text("Right Hand"),value: "Right Hand"),
    const DropdownMenuItem(child: Text("Wrist Left"),value: "Wrist Left"),
    const DropdownMenuItem(child: Text("Wrist Right"),value: "Wrist Right"),
    const DropdownMenuItem(child: Text("Torso Front"),value: "Torso Front"),
    const DropdownMenuItem(child: Text("Torso Back"),value: "Torso Back"),
    const DropdownMenuItem(child: Text("Torso Left"),value: "Torso Left"),
    const DropdownMenuItem(child: Text("Torso Right"),value: "Torso Right"),
    const DropdownMenuItem(child: Text("Upper Leg Left"),value: "Upper Leg Left"),
    const DropdownMenuItem(child: Text("Upper Leg Right"),value: "Upper Leg Right"),
    const DropdownMenuItem(child: Text("Lower Leg Left"),value: "Lower Leg Left"),
    const DropdownMenuItem(child: Text("Lower Leg Right"),value: "Lower Leg Right"),
    const DropdownMenuItem(child: Text("Ankle Left"),value: "Ankle Left"),
    const DropdownMenuItem(child: Text("Ankle Right"),value: "Ankle Right"),
    const DropdownMenuItem(child: Text("Foot Left"),value: "Foot Left"),
    const DropdownMenuItem(child: Text("Foot Right"),value: "Foot Right"),
  ];
  return menuItems;
}

// twinHairItems
   List<DropdownMenuItem<String>> get twinHairItems{
      List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("My whorls spiral is clockwise and twin's is counter-clockwise"),value: "My whorls spiral is clockwise and twin's is counter-clockwise"),
    const DropdownMenuItem(child: Text("My cowlicks spiral is clockwise and twin's is counter-clockwise"),value: "My cowlicks spiral is clockwise and twin's is counter-clockwis"),
    const DropdownMenuItem(child: Text("My whorls spiral is clockwise and twin's is counter-clockwise"),value: "My whorls spiral is clockwise and twin's is counter-clockwise"),
    const DropdownMenuItem(child: Text("My cowlicks spiral is clockwise and twin's is counter-clockwise"),value: "My cowlicks spiral is clockwise and twin's is counter-clockwis"),
  ];
  return menuItems;
}

// twinNaturalEyeColorItem
 List<DropdownMenuItem<String>> get twinNaturalEyeColorItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Amber"),value: "Amber"),
    const DropdownMenuItem(child: Text("Blue"),value: "Blue"),
    const DropdownMenuItem(child: Text("Brown"),value: "Brown"),
    const DropdownMenuItem(child: Text("Gray"),value: "Gray"),
    const DropdownMenuItem(child: Text("Green"),value: "Green"),
    const DropdownMenuItem(child: Text("Hazel"),value: "Hazel"),
    const DropdownMenuItem(child: Text("Hazel"),value: "Hazel"),
    const DropdownMenuItem(child: Text("Red and violet"),value: "Red and violet"),
    const DropdownMenuItem(child: Text("Spectrum of eye color"),value: "Spectrum of eye color"),
  ];
  return menuItems;
}

// twinCurrentHairColorItems
List<DropdownMenuItem<String>> get twinCurrentHairColorItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Black"),value: "Black"),
    const DropdownMenuItem(child: Text("blonde"),value: "blonde"),
    const DropdownMenuItem(child: Text("Brown"),value: "Brown"),
    const DropdownMenuItem(child: Text("Brunette"),value: "Brunette"),
    const DropdownMenuItem(child: Text("Carrot top red"),value: "Carrot top red"),
    const DropdownMenuItem(child: Text("Dark-Brown"),value: "Dark-Brown"),
    const DropdownMenuItem(child: Text("Fiery red"),value: "Fiery red"),
    const DropdownMenuItem(child: Text("Gray"),value: "Gray"),
    const DropdownMenuItem(child: Text("Honey"),value: "Honey"),
    const DropdownMenuItem(child: Text("Light-Brown"),value: "Light-Brown"),
    const DropdownMenuItem(child: Text("Platinum Blonde"),value: "Platinum Blonde"),
    const DropdownMenuItem(child: Text("Sandy"),value: "Sandy"),
    const DropdownMenuItem(child: Text("Silver"),value: "Silver"),
    const DropdownMenuItem(child: Text("Strawberry red"),value: "Strawberry red"),

  ];
  return menuItems;
}

// Twin Personality Items
List<DropdownMenuItem<String>> get twinPersonalityItems {
    List<DropdownMenuItem<String>> menuItems = [
   const DropdownMenuItem(child: Text("Extrovert"),value: "Extrovert"),
    const DropdownMenuItem(child: Text("Sensors"),value: "Sensors"),
    const DropdownMenuItem(child: Text("Thinker"),value: "Thinker"),
    const DropdownMenuItem(child: Text("Judger"),value: "Judger"),
    const DropdownMenuItem(child: Text("Introvert"),value: "Introvert"),
    const DropdownMenuItem(child: Text("Intuitve"),value: "Intuitve"),
    const DropdownMenuItem(child: Text("Perceiver"),value: "Perceiver"),
    const DropdownMenuItem(child: Text("Agreeableness"),value: "Agreeableness"),
    const DropdownMenuItem(child: Text("Conscientiousness"),value: "Conscientiousness"),
    const DropdownMenuItem(child: Text("Detailed, Controlled, And Stable"),value: "Detailed, Controlled, And Stable"),
    const DropdownMenuItem(child: Text("Emotional Uncontrollable"),value: "Emotional Uncontrollable"),
    const DropdownMenuItem(child: Text("Neuroticism"),value: "Neuroticism"),
    const DropdownMenuItem(child: Text("Neuroticism That Is Close To Psychosis"),value: "Neuroticism That Is Close To Psychosis"),
    const DropdownMenuItem(child: Text("Not Agreeable"),value: "Not Agreeable"),
    const DropdownMenuItem(child: Text("Not empathetic"),value: "Not empathetic"),
    const DropdownMenuItem(child: Text("Openness"),value: "Openness"),
    const DropdownMenuItem(child: Text("Secretive"),value: "Secretive"),
  ];
  return menuItems;
}

// hearAboutUsItems
 List<DropdownMenuItem<String>> get hearAboutUsItems{
    List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Friends / Family Word of Mouth"),value: "Friends / Family Word of Mouth"),
    const DropdownMenuItem(child: Text("Counselor / Bank Professional referral"),value: "Counselor / Bank Professional referral"),
    const DropdownMenuItem(child: Text("Yahoo!"),value: "Yahoo!"),
    const DropdownMenuItem(child: Text("Google"),value: "Google"),
    const DropdownMenuItem(child: Text("Bing"),value: "Bing"),
    const DropdownMenuItem(child: Text("Youtube"),value: "Youtube"),
    const DropdownMenuItem(child: Text("Website Banners"),value: "Website Banners"),
    const DropdownMenuItem(child: Text("Advertisement on Clothing"),value: "Advertisement on Clothing"),
    const DropdownMenuItem(child: Text("Advertisement received at home"),value: "Advertisement received at home"),
    const DropdownMenuItem(child: Text("Advertisement at bank"),value: "Advertisement at bank"),
    const DropdownMenuItem(child: Text("Advertisement at a store"),value: "Advertisement at a store"),
    const DropdownMenuItem(child: Text("Advertisement at a health care place"),value: "Advertisement at a health care place"),
    const DropdownMenuItem(child: Text("Advertisement in magazine"),value: "Advertisement in magazine"),
    const DropdownMenuItem(child: Text("Newspaper Editorial"),value: "Newspaper Editorial"),
    const DropdownMenuItem(child: Text("Radio"),value: "Radio"),
    const DropdownMenuItem(child: Text("Television"),value: "Television"),
    const DropdownMenuItem(child: Text("E-mail ads"),value: "E-mail ads"),
    const DropdownMenuItem(child: Text("Internets Blogs"),value: "Internets Blogs"),
    const DropdownMenuItem(child: Text("Other"),value: "Other"),


  ];
  return menuItems;
}
