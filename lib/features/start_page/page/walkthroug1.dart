import 'package:dailyfood/features/common_widgets/ktext_button.dart';
import 'package:dailyfood/routes/routes.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WalkThrough1 extends StatelessWidget {
  const WalkThrough1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/illustration2.png",
                width: 80,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: const Text(
                  "DailyFood FoodService",
                  style: KtextStyls.headLine1,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/Illustration1.png",
          ),

          const SizedBox(height: 20),

          const Text("All Your Favorites",style:KtextStyls.title2), 
          const SizedBox(height: 20),
          SizedBox(width: MediaQuery.of(context).size.width * .7, child: const Text("Order from the best on demand rastaurent, easy and fast delivery",style:KtextStyls.subTitle1,textAlign: TextAlign.justify)),
          const SizedBox(height: 30),
          KTextButton(text: "Get Started", onPressed: (){
            Navigator.pushNamed(context, RouteGenerator.walkthrough2); 
          })
        ],
      ),
    ));
  }
}
