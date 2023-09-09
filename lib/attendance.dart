import 'package:flutter/material.dart';

import 'homecreen.dart';
import 'login.dart';
import 'newuser.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  // TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => NewUser()),
              );
            },
          ),
        ],
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homeui()),
              );
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




      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Icon(Icons.person
                ),
                inputFile(

                  label: 'Employee Name',

                ),
                 SizedBox(height: 20.0),
                 buildDatePicker(context), // Add date picker widget
                // SizedBox(height: 20.0),
                // buildEmployeeTextField('Employee 1'),
                // buildEmployeeTextField('Employee 2'),
                // buildEmployeeTextField('Employee 3'),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildTapButton('Present'),
                    buildTapButton('Absent'),
                    buildTapButton('Half-day'),
                    buildTapButton('Overtime'),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget buildEmployeeTextField(String employeeName) {
    return TextField(
      decoration: InputDecoration(
        labelText: employeeName,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget buildTapButton(String label) {
    return GestureDetector(
      onTap: () {
        // Handle button tap based on the label
        print('Tapped $label');
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        color: Colors.blue,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDatePicker(context); // Show the date picker dialog
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        color: Colors.blue,
        child: Text(
          'Date',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      // Handle the selected date
      print('Selected date: $pickedDate');

    }


  }
}