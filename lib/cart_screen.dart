import 'package:ui_test/products_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 3,
        title: const Text("Fruits And Vegetables",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 40,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios),color: Colors.white,),
        actions: [
          Stack(
            children: [
              Transform.flip(
                flipX: true,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart,color: Colors.white,size: 28,)),
              ),
              const Positioned(
                  left: 0,
                  top: -1,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 10,
                      child: Text("2")))
            ],
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("25 Products Founds"),
                  Image.asset("asset/icon/filter.png")
                ],
              ),
            )),
      ),
      //    ৳
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            itemCount: productsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                mainAxisExtent: 210),
            itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade100,
                            blurRadius: 2,
                            spreadRadius: 5,
                            offset: const Offset(2, 2)),
                        BoxShadow(
                            color: Colors.grey.shade100,
                            blurRadius: 2,
                            spreadRadius: 5,
                            offset: const Offset(-2, -2)),
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        productsList[index].imagePath,
                        height: 110,
                        width: 130,
                      ),
                      Text(productsList[index].name),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "৳" + productsList[index].oldPrice.toString(),
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "৳" + productsList[index].price.toString(),
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.green,
                        thickness: 0.51,
                      ),
                      Text(
                        "Add to cart",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ],
                  ),
                )),
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
