import 'package:flutter/material.dart';
import 'package:loanmaster/main.dart';
import 'package:intl/intl.dart';
import './final_page.dart';

class PersonalDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PersonalDetailsState();
  }
}

class PersonalDetailsState extends State<PersonalDetails>{
  DateTime _selectedDate = DateTime.now();
  TextEditingController nameController = TextEditingController();
  TextEditingController aadharController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  void _presentDatePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1947), lastDate: DateTime.now()).
    then((pickedDate){
      if(pickedDate == null){
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });

    });}
    void navigate_to_final_page(BuildContext context){
       Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>FinalPage(nameController.text,aadharController.text,addressController.text,_selectedDate)));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoanMaster',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xFFF1F1F1),width: 1)
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 300,
              child: ListView(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your name',
                        hintText: 'e.g. Rohit sharma'
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: aadharController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your aadhar number',
                        hintText: 'e.g. 1234-5678-9000'
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your address',
                        hintText: 'e.g. 503,Mohini Nagar, New Delhi'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_selectedDate == null ? 'Please enter your DOB': 'Your DOB: ${DateFormat.yMd().format(_selectedDate)}'),
                      TextButton(
                        onPressed: _presentDatePicker,
                        child: Text('Choose a date',style: TextStyle(color: Theme.of(context).primaryColor),),
                      )
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: ()=>navigate_to_final_page(context),
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.only(top:10,left:20,right: 20,bottom: 10),
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor
                ),
                child: Text('continue',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}