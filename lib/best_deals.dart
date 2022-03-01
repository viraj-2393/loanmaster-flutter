import 'package:flutter/material.dart';
import './offers.dart';
class BestDeals extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoanMaster",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Offers(
              title: '5 year Pro Bonanza',
              bankName: 'Citi Bank',
              amount: '4,00,000',
              monthlyInstalment: '9,101.00',
              rate: '13',
              duration: '5',
              bankIcon: 'assets/images/citibank.png',
            ),
            Offers(
                title: 'Auto Loan',
                bankName: 'Bank of Baroda',
                amount: '5,50,000',
                monthlyInstalment: '12,514.00',
                rate: '13',
                duration: '5',
                bankIcon: 'assets/images/baroda.png'
            )
          ],
        ),
      ),
    );
  }
}