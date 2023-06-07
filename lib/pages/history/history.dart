import 'package:flutter/material.dart';

class History extends StatelessWidget {

  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child:  Column(
        children: [
          Text('History investment page', style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.history, size: 129,),
          ),
           SizedBox(height: 100,),
           Text('Lịch sử đầu tư', style: TextStyle(fontSize: 30, color: Colors.blue),),
        ],
      ),
    );
  }
  
}