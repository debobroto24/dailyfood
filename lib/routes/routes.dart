import 'package:dailyfood/features/home/page/home_page.dart';
import 'package:dailyfood/features/home/page/show_restaurents.dart';
import 'package:dailyfood/features/start_page/page/walkthroug1.dart';
import 'package:dailyfood/features/start_page/page/walkthroug2.dart';
import 'package:dailyfood/features/start_page/page/walkthroug4.dart';
import 'package:dailyfood/features/start_page/page/welcome.dart';
import 'package:dailyfood/features/userauth/page/sign_in.dart';
import 'package:dailyfood/features/userauth/page/sign_up.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String welcome = "welcome";
  static const String walkthrough1 = "walkthrough1";
  static const String walkthrough2 = "walkthrough2";
  static const String walkthrough3 = "walkthrough3";
  static const String signIn = "signIn";
  static const String signUp = "signUp";
  static const String homePage = "homepage";
  static const String showRestaurents = "showrestaurents";



  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "welcome":
        return MaterialPageRoute(builder: (_) => const Welcome());
      case "walkthrough1":
        return MaterialPageRoute(builder: (_) =>const WalkThrough1());
      case "walkthrough2":
        return MaterialPageRoute(builder: (_) =>const Walkthrough2());
      case "walkthrough3":
        return MaterialPageRoute(builder: (_) =>const Walkthrough4());
      case "/welcome":
        return MaterialPageRoute(builder: (_) => Container());
      case "signIn":
        return MaterialPageRoute(builder: (_) => SignIn());
      case "signUp":
        return MaterialPageRoute(builder: (_) => SignUp());
      case "homepage":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "showrestaurents":
        return MaterialPageRoute(builder: (_) => ShowRestaurents());
      default:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
    }
  }
}
