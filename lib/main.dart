import 'package:dailyfood/features/main_screen.dart';
import 'package:dailyfood/features/start_page/page/welcome.dart';
import 'package:dailyfood/features/userauth/page/sign_in.dart';
import 'package:dailyfood/routes/routes.dart';
import 'package:dailyfood/service/navigation_service.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // change statusbar color 
  SystemChrome.setSystemUIOverlayStyle( 
   const SystemUiOverlayStyle(
      statusBarColor: Kcolor.bgColor, 
      statusBarIconBrightness: Brightness.dark // set status bar icon dartk
    )
  ); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Kcolor.bgColor
      ),
      // home: Welcome(),
      // home: SignIn( ),
      home: MainScreen(),
      // initialRoute: RouteGenerator.welcome,
      onGenerateRoute: RouteGenerator.generateRoute ,
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}
