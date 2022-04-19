import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import './constants.dart';

  class PickDate extends StatefulWidget {
        const PickDate({Key? key}) : super(key: key);

      @override
      _PickDateState createState() => _PickDateState();
      }
      class _PickDateState extends State<PickDate> {
          DateTime _selectedDate = DateTime.now();
          final TextEditingController _controller = TextEditingController();

      @override
          Widget build(BuildContext context) {
                return TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                   contentPadding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                        fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                                    borderRadius: BorderRadius.circular(20)),
                                    labelText: 'Date',
                                    hintText: 'dd -- yyyy',
                                    suffix: IconButton(
                                    icon: const Icon(Icons.date_range),
                                    onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: _selectedDate,
                                          firstDate: DateTime.now().subtract(
                                              const Duration(days: 
                                          30)),
                                          lastDate: DateTime.now().add(
                                            const Duration(days: 30)),
                                          )
                                      .then((selectedDate) {
                                        if (selectedDate != null) {
                                          _selectedDate = selectedDate;
                                          _controller.text = DateFormat.yMd().format(_selectedDate);
                                            }
                                          });
                                          },  
                                        ),
                     ),
                  );
            //       )
            //       ),
            // ),
            // );
          }
       }