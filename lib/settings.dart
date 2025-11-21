import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,color:Colors.teal , size: 100,),
          SizedBox(height: 5,),
          Text("Settings",style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
