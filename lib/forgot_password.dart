

import 'package:flutter/material.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller:  emailController,
            decoration: InputDecoration(
              hintText: 'Email'
            ),

          ),
          SizedBox(height: 40,),

        ],
      ),
    );
  }
}
