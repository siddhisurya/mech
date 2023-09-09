import 'package:flutter/material.dart';

import 'login.dart';

class StaffProfile extends StatefulWidget {
  const StaffProfile({super.key});

  @override
  State<StaffProfile> createState() => _StaffProfileState();
}

class _StaffProfileState extends State<StaffProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Staff Profile'),
    centerTitle: true,
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () { },
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),

              )
          ),
        ),
       body: Container(
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 40),
               child: Column(
                 children: <Widget>[
                   inputFile(label: "Name"),
                   inputFile(label: "Mobile Number"),
                   inputFile(label: "Shift Hours")

                 ],
               ),
             ),
           ],
         ),
       )




    );
  }
}
