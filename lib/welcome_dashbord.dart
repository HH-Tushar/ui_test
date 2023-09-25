import 'package:ui_test/home_screen.dart';
import 'package:ui_test/widgets/welcome_screen.dart';
import 'package:ui_test/widgets/bottom_dot.dart';
import 'package:flutter/material.dart';

import 'widgets/delivery_screen.dart';
import 'widgets/grocery.dart';

class WelcomeDashBordScreen extends StatefulWidget {
  const WelcomeDashBordScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeDashBordScreen> createState() => _WelcomeDashBordScreenState();
}

class _WelcomeDashBordScreenState extends State<WelcomeDashBordScreen> {

  //page controller to control the page state
  PageController controller = PageController();
  int _curr = 0;
  final List<Widget> _list = <Widget>[
    WelcomeScreen(),
    DeliveryScreen(),
    Grocery(),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      //welcome page scrolling
      body: PageView(
        allowImplicitScrolling: true,
        children: _list,
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),

//navigate through pages
      bottomSheet: Padding(
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
            }, child: Text("Skip")),
            Row(

              children: [


                BottomDot(isSelected: _curr==0?true:false,),
                BottomDot(isSelected: _curr==1?true:false,),
                BottomDot(isSelected: _curr==2?true:false,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
