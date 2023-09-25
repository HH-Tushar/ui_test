import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ui_test/welcome_dashbord.dart';

import 'home_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 20),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const WelcomeDashBordScreen()
            )
        )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff019102),
      body: Center(child: Image.asset("asset/logo.png",width: 324,height: 111,),),
    );
  }
}
