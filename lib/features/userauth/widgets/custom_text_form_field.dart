import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController controller;
  String? hintText; 
  CustomTextFormField({super.key, required this.controller, this.hintText = ""});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isValid = false; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: isValidCheck,
      controller: widget.controller,
      style: KtextStyls.title2,
      decoration: InputDecoration(
        hintText:widget.hintText!,
        hintStyle: KtextStyls.title2,
        suffixIcon:  Icon(Icons.check, color:isValid? Colors.green : Colors.red),
        border: InputBorder.none,
      ),
    );
  }

  String? isValidCheck(value){
      if(value == null || value.isEmpty){
        setState((){
          isValid = false; 
        });
       return "Please fillup";
      }
      //  if(value.isNotEmpty){
      //   const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
      //   final RegExp regex = RegExp(emailPattern);
      //   setState(() {
      //      isValid =  regex.hasMatch(value);
      //   });
      //  return null; 
      // } 
      return null; 
    }
}
