import 'package:flutter/material.dart';
import 'package:mechanicalerp/attendance.dart';
import 'package:mechanicalerp/menu.dart';
class Homeui extends StatefulWidget {
  const Homeui({super.key});

  @override
  State<Homeui> createState() => _HomeuiState();
}

class _HomeuiState extends State<Homeui> {


  @override

  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        title: const  Text('Mech ERP'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
             icon: const Icon(Icons.notifications),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(

        )),
        );
      },
          ),
        ],
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){

          },
          icon: IconButton(
            icon: const Icon(Icons.menu),

            onPressed: (){




            },

          ),
        ),


        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),

          )

        ),

      ),




        body: ListView(
          children: [
            

            Padding(padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 150,
                color: Colors.blue[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                    child: Text("Active Staff", style:TextStyle(fontSize: 25)),

            ),
                    Padding(padding: const EdgeInsets.only(right: 5.0),
                 child:   Text("Inactive Staff", style: TextStyle(fontSize: 25)),
                    ),
                  ],

                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 150,
                color: Colors.blue[200],
              ),
            ),
            Padding(padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 150,
                color: Colors.blue[200],
              ),
            ),
            Padding(padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 150,
                color: Colors.blue[200],
              ),
            ),




          ],
        ),











      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_view_month),
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:( context) => Attendance()),
                      );
                    },
                  ),

                  Text(
                    "Attendance",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:20.0,top:10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.currency_rupee),
                    color: Colors.blue,
                    onPressed: (){},
                  ),
                  Text(
                    "Salary",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    color: Colors.blue,
                    onPressed: (){},
                  ),
                  Text(
                    " ",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top:10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add_chart_sharp),
                    color: Colors.blue,
                    onPressed: (){},
                  ),
                  Text(
                    "Invoicing",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.inventory_outlined),
                    color: Colors.blue,
                    onPressed: (){},
                  ),
                  Text(
                    "Inventory",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),



















          ],
        ),
      ),


    );


  }
}
