import 'package:flutter/widgets.dart';

class NavigationService{
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<dynamic> navigatePush(Route route){
    return navigatorKey.currentState!.push(route);
  }
}