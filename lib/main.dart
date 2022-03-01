import 'package:flutter/material.dart';
import './best_deals.dart';
void main() {
  Map<int, Color> color =
  {
    50:Color.fromRGBO(0,224,144, .1),
    100:Color.fromRGBO(0,224,144, .2),
    200:Color.fromRGBO(0,224,144, .3),
    300:Color.fromRGBO(0,224,144, .4),
    400:Color.fromRGBO(0,224,144, .5),
    500:Color.fromRGBO(0,224,144, .6),
    600:Color.fromRGBO(0,224,144, .7),
    700:Color.fromRGBO(0,224,144, .8),
    800:Color.fromRGBO(0,224,144, .9),
    900:Color.fromRGBO(0,224,144, 1),
  };
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: MaterialColor(0xFF00e090,color)
    ),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  
  void navigate_to_best_deals(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BestDeals()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoanMaster",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.explore,color: Colors.white,),
            ),
        ],
      ),
      body:Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Take your first loan with LoanMaster!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                'Fast, easy and convenient. Check it and...',
                textAlign: TextAlign.center,
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
                  onTap: ()=>navigate_to_best_deals(context),
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
          ),
        ),
      ),
    );
  }
}
