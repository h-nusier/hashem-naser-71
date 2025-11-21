import 'package:alzubaer_l1/Index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:IndexPage()

      // Scaffold(
      //   appBar:
      //   AppBar(
      //     title: Text("CV"),
      //   ),
      //   body: Column(
      //     children: [
      //       Center(
      //         child: Container(
      //           color: Colors.blueGrey,
      //           width: double.infinity,
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(vertical: 20),
      //             child: Column(
      //               children: [
      //                 CircleAvatar(
      //                   radius: 50,
      //                   backgroundImage: Image.asset('').image,
      //
      //                 ),
      //                 SizedBox(height: 20,),
      //                 Text("Hashem Naser"),
      //                 SizedBox(height: 10,),
      //                 Text("Mobile App Devloper")
      //               ],
      //             ),
      //           ),
      //         ) ,
      //       ),
      //
      //       SizedBox(height: 30,),
      //       Row(
      //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //        children: [
      //        Text("Email:"),
      //          Text("h99.n100@gmail.com"),
      //      ],
      //      ),
      //
      //
      //     ],
      //   ),
      // ),
      
    );
  }
}
