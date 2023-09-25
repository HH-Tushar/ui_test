

import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("asset/logo/Get_FastDelivery Se.png",
                  height: 83,
                  width: 309, alignment: Alignment.center),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "asset/logo/deliveryLogo.png",
                    // width: 323,
                    // height: 124,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: screenHeight*.10,),

            ],
          ),
        ),
      ),
    );
  }
}
