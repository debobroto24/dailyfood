import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomIconTextButton extends StatelessWidget {
  String? iconImagePath; 
  String text; 
  Color? color;
  VoidCallback onPressed; 
   CustomIconTextButton({
    super.key,
     this.iconImagePath = "assets/images/facebook.png", 
    required this.text,
    required this.onPressed, 
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onPressed,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color:color, 
          borderRadius: BorderRadius.circular(10), 
        ),
        child: Row(  
          children: [
            
            Container(
              padding: const EdgeInsets.only(left: 20), 
              alignment: Alignment.centerLeft,
              child: Container( 
                height: 35, 
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Kcolor.bgColor, 
                  borderRadius: BorderRadius.circular(8),
                ),
                
                child: ImageIcon(AssetImage(iconImagePath!))), 
            ), 
             Expanded(child: Align(alignment: Alignment.center,child: Text(text,style: KtextStyls.buttonText,),))
          ],
        )
      ),
    );
  }
}
