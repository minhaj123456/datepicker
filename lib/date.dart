import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
DateTime _dateTime=DateTime.now();


  void _showdatepicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025)
    ).then((value) {
      setState(() {
        _dateTime=value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dateTime.toString(),style: TextStyle(fontSize: 20),),
            MaterialButton(
              onPressed: _showdatepicker,
            padding: EdgeInsets.all(20.0),
            child: Text('choose date',style: TextStyle(color: Colors.white,fontSize:25 ),),
            color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}