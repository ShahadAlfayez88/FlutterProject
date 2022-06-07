import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        toolbarHeight: 80,
        elevation: 1,
        shadowColor: Color.fromARGB(255, 193, 160, 160),
        centerTitle: true,
        title: Image.asset(
          "images/logo.png",
          height: 800,
          width: 80,
        ),
        backgroundColor: Color.fromARGB(255, 249, 249, 241),
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          null,
          0,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 200),
          child: Text("Your Shopping cart is empty!"),
        ),
      ),
    );
  }
}
