import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  CustomTextFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value == null || value.isEmpty)return "Please fillup";
        return null; 
      },
      controller: controller,
      style: KtextStyls.title2,
      decoration:const InputDecoration(
        hintText: "yourEmail@something.com",
        hintStyle: KtextStyls.title2,
        suffixIcon: Icon(Icons.fork_right),
        border: InputBorder.none,
      ),
    );
  }
}
