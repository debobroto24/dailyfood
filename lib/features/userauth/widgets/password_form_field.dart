import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  bool? obscureText; 
  TextEditingController controller;
   PasswordFormField({
    super.key,
    this.obscureText = true, required  this.controller,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value){
        if(value == null || value.isEmpty)return "Please fillup";
        return null; 
      },
      controller: widget.controller,
      style: KtextStyls.title2,
      obscureText: widget.obscureText!,
      decoration: InputDecoration(
        hintText: "*****",
        hintStyle: KtextStyls.title2,
        suffixIcon: IconButton(  
          onPressed: (){
            setState(() {
               widget.obscureText = !widget.obscureText!; 
            });
           
          }, 
          icon: Icon(widget.obscureText!?Icons.visibility: Icons.visibility_off),
        ),
        
        border: InputBorder.none,
      ),
    );
  }
}
