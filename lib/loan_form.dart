import 'package:flutter/material.dart';
class LoanForm extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return LoanFormState();
  }
}

class LoanFormState extends State<LoanForm>{
  double value = 40000.0;
  double min = 10000.0;
  double max = 400000.0;
  double month = 20.0;
  double min_month = 10;
  double max_month = 60.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoanMaster',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFFF1F1F1),width: 1)
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Borrowed Amount',style: TextStyle(color: Colors.grey),),
                      Text('₹${value}',style: TextStyle(fontSize: 18),),
                      Slider(
                        value: value,
                        min: min,
                        max: max,
                        divisions: 10,
                        activeColor: Theme.of(context).primaryColor,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState((){
                            value = newValue;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20,bottom: 20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFF1F1F1),width: 2)
                        ),
                      ),
                      const Text('Repayment Period',style: TextStyle(color: Colors.grey),),
                      Text('${month.round()} Months',style: TextStyle(fontSize: 18),),
                      Slider(
                        value: month,
                        min: min_month,
                        max: max_month,
                        divisions: 5,
                        activeColor: Theme.of(context).primaryColor,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState((){
                            month = newValue;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('10 Months',style: TextStyle(color: Colors.grey),),
                          Text('60 Months',style: TextStyle(color: Colors.grey),)
                        ],
                      )

                    ],
                  ),

                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFF1F1F1),width: 1)
                    ),
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Monthly cost for ${month.round()} months',style: TextStyle(color: Colors.grey),),
                        Text('₹${value}',style: TextStyle(fontSize: 18),),
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child: Text('You\'re borrowing ₹${value} over ${month.round()} months at 13% p.a with total loan cost of ₹5,00,000. No added fees.'),
                        )
                        ,
                      ],
                    )
                ),

              ]),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            padding: EdgeInsets.only(top:10,left:20,right: 20,bottom: 10),
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor
            ),
            child: Text('continue',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          )
        ],
      ) ,

    );
  }
}