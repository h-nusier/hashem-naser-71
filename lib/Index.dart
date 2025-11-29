import 'package:alzubaer_l1/account.dart';
import 'package:alzubaer_l1/home.dart';
import 'package:alzubaer_l1/search.dart';
import 'package:alzubaer_l1/settings.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}
int _bindex = 0;
List<Widget> _pages =[
  HomePage(),
  SearchPage(),
  SettingsPage(),
  AccountPage(),
];

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text(_gettitle(_bindex)),
        backgroundColor: Colors.teal,
      ),

      body: IndexedStack(
        index: _bindex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,

          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home,),label:("home"),) ,
            BottomNavigationBarItem(icon: Icon(Icons.search,),label:("search")),
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label:("settings")),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp,),label:("account"),
            ),

        ],


      currentIndex:_bindex ,
        onTap: (index){
        setState(() {
          _bindex=index;
        });
        },
      ),
    );
  }
}


String _gettitle(int index){
  switch (index){
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'Settings';
    case 3:
      return 'Account';
    default :
      return 'data';
  }
}
