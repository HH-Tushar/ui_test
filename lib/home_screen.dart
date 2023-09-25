import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'category_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.green,
        title: Image.asset(
          "asset/logo/logo.png",
          width: 70,
          height: 23,
        ),
        centerTitle: true,
        leading: Image.asset(
          "asset/icon/Icon ionic-md-menu.png",
          width: 27,
          height: 18,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/icon/Search.png",
              height: 16,
              width: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/icon/shopping-cart.png",
              height: 16,
              width: 18,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //banner
          SizedBox(height: 5),
          Image.asset(
            "asset/logo/banner.png",
            width: double.infinity,
          ),


          //top catagory List
          SizedBox(
            height: 150,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: topList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 80,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade100,
                            blurRadius: 2,
                            spreadRadius: 5,
                            offset: Offset(2, 1))
                      ]),
                      child: Image.asset(
                        topList[index].imagePath,
                        height: 100,
                        width: 75,
                      )),
                  Text(
                    topList[index].name,
                    style: const TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 5),

          //body Category List
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => CartScreen()));
                },
                leading: Image.asset(
                  bodyList[index].imagePath,
                  height: 100,
                  width: 75,
                ),
                title: Text(bodyList[index].name,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5)),
                subtitle: Text(bodyList[index].description.toString()),
                trailing: Image.asset(
                  "asset/icon/Icon metro-chevron-t.png",
                  width: 14,
                  height: 26,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color(0xff707070),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Me"),
        ],
      ),
    );
  }
}
