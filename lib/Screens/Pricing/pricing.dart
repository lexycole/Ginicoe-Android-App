import 'package:flutter/material.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {

@override
Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: () {
             Navigator.pop(context);
           },
         ),
        backgroundColor: const Color(0xFF1976D2),
        title: const Text('Stripe Payment'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/stripe_payment_card.png', width: 150.0, height: 150.0),
            const SizedBox(height: 30.0),
             ElevatedButton(
                  child: Text('Checkout', style: TextStyle(color: Colors.white),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    textStyle: TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
              ),
            ],
          ),
        ),

      );
    }
}