import 'package:flutter/material.dart';
import './loan_form.dart';
class Offers extends StatelessWidget{
  final String title;
  final String bankName;
  final String amount;
  final String monthlyInstalment;
  final String rate;
  final String duration;
  final String bankIcon;
  Offers({
    required this.title,
    required this.bankName,
    required this.amount,
    required this.monthlyInstalment,
    required this.rate,
    required this.duration,
    required this.bankIcon
});
  void navigate_to_loan_form(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoanForm()));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
        padding: EdgeInsets.only(top:10,left: 20,right: 20,bottom: 10),
        decoration:BoxDecoration(
          border: Border.all(color: Color(0xFFF1F1F1),width: 1),
          borderRadius: BorderRadius.circular(15),

        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(fontSize: 18),),
                    Text(bankName,style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Container(
                  width: 50,
                  height: 30,
                  child: Image.asset(
                    bankIcon,
                    fit: BoxFit.contain,

                  ),
                )

              ],
            ),
            Container(
                height: 150,
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.only(top:10,left: 20,right: 20,bottom: 10),
                decoration:BoxDecoration(
                  border: Border.all(color: Color(0xFFF1F1F1),width: 1),
                  borderRadius: BorderRadius.circular(15),

                ),
                child:GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 80,
                  ),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount',style: TextStyle(color: Colors.grey),),
                        Text('₹${amount}',style: TextStyle(fontSize: 18.0),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Monthly instalment',style: TextStyle(color: Colors.grey),),
                        Text('₹${monthlyInstalment}',style: TextStyle(fontSize: 18.0),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rate',style: TextStyle(color: Colors.grey),),
                        Text('${rate}% p.a.',style: TextStyle(fontSize: 18.0),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Duration',style: TextStyle(color: Colors.grey),),
                        Text('${duration} years',style: TextStyle(fontSize: 18.0),)
                      ],
                    )

                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFF6D9)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star,color: Color(0xFFFDC500),),
                  SizedBox(width: 10,),
                  Flexible(child: Text('Top rated and very Flexible. Entirely online process and quick approval.',
                    style: TextStyle(color: Colors.grey),)),


                ],
              ),
            ),
            Container(
                width: 150,
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.only(top:10,left:15,right:15,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: ()=>navigate_to_loan_form(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Apply now',style: TextStyle(color: Colors.white,fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,)
                    ],
                  ),
                )
            )

          ],
        )
    );
  }
}