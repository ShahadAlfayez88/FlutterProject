import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 241),
      body: ListView(children: [
        Container(
          height: 50,
          alignment: Alignment.center,
          child: Text("Take a Look At Our Limited Edtion"),
        ),
        GridView(
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 16,
          ),
          children: [
            CardWidget(
              ImageUrl: "images/shoes1.webp",
              Description: "lorem lorem lorem",
              name: "Nike Jordan",
              price: "299 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes2.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "300 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes3.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "230 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes4.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "293 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes5.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "300 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes6.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "199 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes1.webp",
              Description: "lorem lorem lorem",
              name: "Nike Jordan",
              price: "299 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes2.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "300 SAR",
            ),
            CardWidget(
              ImageUrl: "images/shoes3.webp",
              Description: "lorem lorem lorem",
              name: "Nike ver1",
              price: "230 SAR",
            ),
          ],
        )
      ]),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String ImageUrl;
  final String name;
  final String price;
  final String Description;

  const CardWidget({
    Key? key,
    required this.ImageUrl,
    required this.name,
    required this.price,
    required this.Description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 242, 246, 247),
            border: Border.all(width: 0.2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 2,
            ),
            Image.asset(
              ImageUrl,
              height: 180,
              width: 180,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(Description),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(Icons.shopping_cart,
                    size: 25, color: Color.fromARGB(255, 218, 160, 63)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
