import 'package:dailyfood/features/home/widget/signle_restaurent_card.dart';
import 'package:flutter/material.dart';

class RestaurentListSlider extends StatelessWidget {
  const RestaurentListSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10, 
        itemBuilder: (context,index){
          return SingleRestaurentCard();
        },
      )
      
    );
  }
}
