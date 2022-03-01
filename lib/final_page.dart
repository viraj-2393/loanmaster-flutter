import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class FinalPage extends StatelessWidget{
  final String name;
  final String aadharNumber;
  final String address;
  final DateTime dob;
  FinalPage(this.name,this.aadharNumber,this.address,this.dob);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoanMaster',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
              height: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFFF1F1F1),width: 1)
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        child: Image.asset(
                          'assets/images/indian_gov.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                          height: 50,
                          child: Image.asset(
                            'assets/images/aadhar.png',
                            fit: BoxFit.fitHeight
                            ,
                          )
                      )


                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top:20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('assets/images/profile.jpg',fit: BoxFit.fill,),
                        ),

                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,style: TextStyle(fontSize: 20),),
                            SizedBox(height: 5,),
                            Text('DOB: ${DateFormat.yMd().format(dob)}',style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 10,),
                            Text(aadharNumber,style: TextStyle(color: Colors.grey,letterSpacing: 2,fontSize: 20),),

                          ],
                        ),
                      )

                    ],
                  ),
                  Container(
                    height: 2,
                    margin: EdgeInsets.only(top:20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF1F1F1)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:10),
                    child:Text('Address:',style: TextStyle(color: Colors.grey),),
                  ),
                  Container(
                    child: Text(address),
                  )

                ],
              )
          ),
          SizedBox(height: 20,),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child: Icon(Icons.check,color: Theme.of(context).primaryColor,size: 50,),
          ),
          SizedBox(height: 10,),
          Text('Applied Successfully!',style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),)
        ],
      )
    );

  }
}