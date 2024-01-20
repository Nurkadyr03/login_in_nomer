// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.controller,
    required this.hintext,
    required this.obscureText,
  }) : super(key: key);
  final  controller;
  final String hintext;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: EdgeInsets.all(14),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     borderSide: BorderSide( color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white)
                    ),
                    fillColor: Colors.black12,
                    filled:true,
                    hintText: hintext,
                    
                  ),
                ),
              );
  }
}
