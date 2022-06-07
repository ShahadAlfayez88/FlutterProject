import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 241),
      body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: ListView(children: [
              Column(
                children: [
                  //part 1
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 200,
                    width: 200,
                    child: Icon(Icons.person,
                        size: 100, color: Color.fromARGB(255, 218, 160, 63)),
                  ),
                  //part 2
                  Text(
                    "\nShahad Abdullah",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.shopping_bag,
                    name: "Your Orders",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.location_on,
                    name: "Your Address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.inventory_outlined,
                    name: "Your Invoice",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.credit_card,
                    name: "Your Saved Cards",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.support_agent,
                    name: "Support",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.contact_support,
                    name: "FAQ",
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  const RowWidget({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 50),
              primary: Colors.white, // Background color
              onPrimary: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Row(children: [
              Icon(icon, size: 30, color: Color.fromARGB(255, 218, 160, 63)),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
