import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home,color:Colors.teal , size: 100,),
          SizedBox(height: 5,),
          Text("home",style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
