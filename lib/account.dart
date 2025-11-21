import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_box_sharp,color:Colors.teal , size: 100,),
          SizedBox(height: 5,),
          Text("Account",style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
