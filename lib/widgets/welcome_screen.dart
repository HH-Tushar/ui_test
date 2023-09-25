import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("asset/WelcomeText.png",width: 287,),

                  Positioned(
                    left: 4,
                      top: 46,
                      child: Image.asset("asset/logo/logo.png",
                    width: 110,

                    color: Color(0xff019102),))
                ],
              ),
              //font use Roboto

              Expanded(child: Image.asset("asset/shopingLogo.png")),
              SizedBox(height: screenHeight*.10,),

            ],
          ),
        ),
      ),

    );
  }
}
