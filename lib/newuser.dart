import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 void main() => runApp(NewUser());

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm>{
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  TextEditingController _idController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _roleController = TextEditingController();
  TextEditingController _shifthoursController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();
  TextEditingController _joiningdateController = TextEditingController();

  Future<void> _submitform() async{
    if( _formKey.currentState!.validate()){
      Map<String,dynamic> data = {
        'id': _idController.text,
        'name': _nameController.text,
        'phone': _phoneController.text,
        'email': _emailController.text,
        'address': _addressController.text,
        'role': _roleController.text,
        'shifthours': _shifthoursController.text,
        'salary': _salaryController.text,
        'joiningdate': _joiningdateController.text,

      };
      String jsonData= jsonEncode(data);

      String apiUrl = 'http: 192.168.1.2//8080/api/newuser';

      try{
          final response = await http.post(
            Uri.parse(apiUrl) ,
          headers: {"Content-Type": "application/json"},
          body: jsonData,


          ) ;

          if( response.statusCode == 200){
          print('Data saved successfully');
          } else {
          print ('Failed to save data. Status code: ${response.statusCode}');
          }
          } catch (e)
      {
        print('Error: $e');
      }

    }
  }


















  @override
  Widget build(BuildContext context) {
    // var dropdownValue;
    return Scaffold(

      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text("New User", style: TextStyle(color: Colors.white,)),
        ),

      ),
      body: Form(
        key: _formKey,
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              children: <Widget>[
                TextField(
                  controller: _idController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.perm_identity,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter id",
                    labelText: 'Id',
                    // validator:(value){
                    //   if (value.isEmpty){
                    //     return 'Please enter ID';
                    //   }
                    //   return null;
                    // },
                    //


                  ),

                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.account_box,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter name.",
                    labelText: 'Name',


                  ),

                ),

                // SizedBox(),
                //  Row(
                //    mainAxisAlignment: MainAxisAlignment.center,
                //    children: [
                //      Padding(padding: EdgeInsets.all(25.0),
                //
                //         child: Text("Payment Method",style: TextStyle(fontSize: 20),)
                //
                //
                //        ),
                //
                //       ],
                //
                //    ),


                // SizedBox(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children:<Widget> [
                //     Icon(Icons.payment),
                //     DropdownButton<String>(
                //       value: dropdownValue,
                //       underline: Container(
                //         height: 2,
                //           color: Colors.blue,
                //
                //       ),
                //       onChanged: (String? newValue){
                //         setState(() {
                //            var dropdownValue= newValue!;
                //         });
                //
                //       },
                //       items: const [
                //         DropdownMenuItem<String>(
                //           value: 'Daily',
                //           child: Text('Daily'),
                //         ),
                //         DropdownMenuItem<String>(
                //           value: 'Weekly',
                //           child: Text('Weekly'),
                //         ),
                //         DropdownMenuItem<String>(
                //           value: 'Monthly',
                //           child: Text('Monthly'),
                //         ),
                //         DropdownMenuItem<String>(
                //           value: 'Work',
                //           child: Text('Work'),
                //         ),
                //
                //
                //
                //       ],
                //
                //
                //
                //
                //
                //
                //
                //     ),
                //
                //
                //   ],
                // ),

                TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter mobile no.",
                    labelText: 'Mobile Number',


                  ),

                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter email",
                    labelText: 'email',


                  ),

                ),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.home,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter address",
                    labelText: 'Address',


                  ),

                ),
                TextField(
                  controller: _roleController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person_pin_circle_sharp,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter role",
                    labelText: 'Role',


                  ),

                ),


                TextField(
                  controller: _shifthoursController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.timelapse,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter shift hours",
                    labelText: 'Shift hours',


                  ),

                ),
                TextField(
                  controller: _salaryController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.currency_rupee,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter monthly salary",
                    labelText: 'Base Salary',


                  ),

                ),

                TextField(
                  controller: _joiningdateController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.date_range,
                      color: Colors.indigo,
                    ),
                    hintText: "Enter joining date",
                    labelText: 'Joining Date',


                  ),

                ),
                SizedBox(height: 25),
                Padding(padding: EdgeInsets.only(top: 45.0),
                  child: ElevatedButton(

                    onPressed: _submitform,
                    child: Text('Save'),


                    ),


                    ),
                  ],

                )



          )


      );


  }
}














