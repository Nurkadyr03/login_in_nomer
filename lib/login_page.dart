import 'package:flutter/material.dart';
import 'package:login_in_nomer/my_components/my_button.dart';
import 'package:login_in_nomer/my_components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //signUserIn
  void signInUser(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Column(
                children: [
                  //logo
                  const SizedBox(height: 50),
                  const Icon(Icons.lock, size: 100),
                  //welcome
                  const SizedBox(height: 20),
                  const Text("Welcome to my APP"),
                  //textfield
                  const SizedBox(height: 50),
                  MyTextField(
                    controller: usernameController,
                    obscureText: false,
                    hintext: " number",
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    obscureText: true,
                    hintext: "password",
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Forgot password"),
                    ],
                  ),
                  const SizedBox(height: 20),
                   MyButton(onTap: signInUser,),
                   const SizedBox(height: 20),
                   Text("Or continue with")
                ],
              ),
            ),
          ),
        ));
  }
}
