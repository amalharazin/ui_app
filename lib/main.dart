import 'package:flutter/material.dart';
import 'package:vp18_ui_app/screens/launch_screen.dart';
import 'package:vp18_ui_app/screens/outboarding/outboarding_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context) => const LaunchScreen(),
        '/out_boarding_screen':(context) =>  OutBoardingScreen(),
      },

    );
  }
}
