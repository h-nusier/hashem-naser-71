import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search,color:Colors.teal , size: 100,),
          SizedBox(height: 5,),
          Text("Search",style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


