import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  String text; 
  IconData icon; 
   LabelText({
    super.key,
    required this.text,
    required this.icon,  
  });

  @override
  Widget build(BuildContext context) {
    return Row(  
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(text, style: KtextStyls.subTitle2), 
     ],
    );
  }
}
