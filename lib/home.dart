import 'package:flutter/material.dart';
import 'package:webkit_example/payment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentWebView()));
            },
            child: Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: const FittedBox(
                    child: Center(
                        child: Text(
                  "Proceed with Stripe",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
