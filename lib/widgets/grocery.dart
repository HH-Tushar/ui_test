import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
     // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          //padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("asset/logo/Best_Quality_Grocery.png",
                  height: 83,
                  width: 309, alignment: Alignment.center),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "asset/logo/grocery.png",
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
