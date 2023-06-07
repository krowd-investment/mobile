import 'package:flutter/material.dart';

class Invest extends StatelessWidget {

  const Invest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child:  Column(
        children: [
          Text('Invest page', style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.currency_bitcoin, size: 129,),
          ),
           SizedBox(height: 100,),
           Text('Invest page Content', style: TextStyle(fontSize: 30, color: Colors.blue),),
        ],
      ),
    );
  }
  
}