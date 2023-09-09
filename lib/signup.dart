import 'package:flutter/material.dart';
import 'package:mechanicalerp/login.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        //brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 10,
            color: Colors.black,),
           // MediaQuery.of(context).size.height

        ),
      ),

           body: SingleChildScrollView(
           child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             TextField(
            decoration: InputDecoration(labelText: 'Username'),
           ),
             TextField(
               decoration: InputDecoration(labelText: 'Business Name'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Address- Street 1'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Street 2'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'State'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Pincode'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Business email'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'GST no'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Contact person name'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Contact no'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Email'),
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Password' ),
               obscureText: true,
             ),
             TextField(
               decoration: InputDecoration(labelText: 'Confirm password'),
               obscureText: true,
             ),
    MaterialButton(
    minWidth: double.infinity,
    height: 30,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),
      );
    },
    color: Color(0xff0095FF),
    elevation: 0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),

    ),
    child: Text(
    "Continue", style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 25,
    color: Colors.white,

    ),

    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}// Text(" ",
                  //   style: TextStyle(
                  //       fontSize: 0,
                  //       color:Colors.grey[700]),)









