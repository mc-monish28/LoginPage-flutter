import 'package:flutter/material.dart';
import 'package:project1/components/my_button.dart';
import 'package:project1/components/my_textfield.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signuserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Icon(Icons.lock, size: 100.0),
              SizedBox(height: 50),
              Text(
                'Welcome Back! U\'ve been missed!',
                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(height: 50),
              MyTextField(
                controller: usernameController,
                obsuretext: false,
                hinttext: 'Enter Email',
              ),
              SizedBox(height: 20),
              MyTextField(
                controller: passwordController,
                obsuretext: true,
                hinttext: 'Enter Password',
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?'
                        , style: TextStyle(color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0,),
              myButton(onTap: signuserIn),

            ],
          ),
        ),
      ),
    );
  }
}
