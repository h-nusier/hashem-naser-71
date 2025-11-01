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

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 30,
            title: Text("CV",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            backgroundColor: Colors.blueGrey.shade300,
          ),
          body: Row(

            children: [
              Container(
                width: 185,
                color: Colors.blueGrey.shade50,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:Image.asset('images/mypic3.png').image ,
                        backgroundColor: Colors.grey,
                        radius:50,
                      ),
                      Divider(
                        thickness: .2,
                        height: 20,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(Icons.email,),
                            title: Text("h.nusier@gmail.com",
                            style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold
                            ),
                            ),
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text("+967 780 717 254",
                              style: TextStyle(fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            dense: true,
                            contentPadding: EdgeInsets.zero,

                          ),
                        ],
                      )


                    ],
                  ),
                ),
              ),

              Expanded(

                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Text("Hashem Naser",

                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("Full-Stack Developer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                        ),
                        Divider(
                          thickness: .2,
                          height: 20,
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        Text("Skills:" ,
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        ),

                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("HTML, CSS, JavaScript",style: TextStyle(fontSize: 11),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("React / Angular / Vue",style: TextStyle(fontSize: 11),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("Node.js / Express.js",style: TextStyle(fontSize: 11),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("SQL & NoSQL Databases",style: TextStyle(fontSize: 11),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("Git & Version Control",style: TextStyle(fontSize: 11),),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.check, size: 20, color: Colors.blueGrey),
                          title: Text("Problem Solving & Debugging",style: TextStyle(fontSize: 11),),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}
