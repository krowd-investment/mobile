import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {

  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child:  Column(
        children: [
          Text('Wallet page', style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.wallet, size: 129,),
          ),
           SizedBox(height: 100,),
           Text('Wallet page Content', style: TextStyle(fontSize: 30, color: Colors.blue),),
        ],
      ),
    );
  }
  
}