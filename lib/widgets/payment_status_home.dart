import 'package:flutter/material.dart';

class PaymentStatusHome extends StatelessWidget {
  const PaymentStatusHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        // container for payment status
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: const Center(
          child: Row(
            children: <Widget>[
              Icon(Icons.payments_rounded),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('Rp0'), Text('Saldo anda')],
              ),
              Expanded(
                  child: SizedBox(
                width: 75,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.arrow_upward_rounded,
                    color: Colors.lightBlue,
                  ),
                  Text('Top Up')
                ],
              ),
              Expanded(
                  child: SizedBox(
                width: 20,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.history,
                    color: Colors.lightBlue,
                  ),
                  Text('Top Up')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
