
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class KTextButton extends StatelessWidget {
  final String text; 
  VoidCallback onPressed; 
   KTextButton({
    super.key, required this.text, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width , 
        height:48,
        decoration: BoxDecoration(  
          color:Kcolor.accent, 
          borderRadius: BorderRadius.circular(10), 
        ),
        alignment: Alignment.center,
        child: Text(text, style: KtextStyls.buttonText),
      ),
    );
  }
}
