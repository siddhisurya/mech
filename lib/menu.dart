import 'package:flutter/material.dart';
import 'package:mechanicalerp/staffprofile.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(" "),
        ),
      ),

    drawer: Drawer(
    child: ListView(
    children: [
    const DrawerHeader(
    child: Column(
    children: [
    Text(
    'Menu',
    style: TextStyle(
    fontSize: 30,
    color: Colors.black,

    ),
    ),
    ],

    ),
    ),
    ListTile(
    leading: Icon(
    Icons.person,
    size: 28,
    ),
    title: TextButton(
    child: Text('Staff Profile'),



    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => StaffProfile()),
    );
    },



    ),
    ),









    ],
    ),

    )

    );
  }
}










