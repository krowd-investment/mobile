import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child:  Column(
        children: [
          Text('Home page', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.home, size: 129,),
          ),
           SizedBox(height: 100,),
           Text('Home page Content', style: TextStyle(fontSize: 30, color: Colors.white),),
        ],
      ),
    );
  }
  
}