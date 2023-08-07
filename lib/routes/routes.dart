import 'package:dailyfood/features/start_page/page/walkthroug1.dart';
import 'package:dailyfood/features/start_page/page/walkthroug2.dart';
import 'package:dailyfood/features/start_page/page/walkthroug4.dart';
import 'package:dailyfood/features/start_page/page/welcome.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String welcome = "welcome";
  static const String walkthrough1 = "walkthrough1";
  static const String walkthrough2 = "walkthrough2";
  static const String walkthrough3 = "walkthrough3";


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
      default:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
    }
  }
}
