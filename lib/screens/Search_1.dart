import 'package:fickle_flight/screens/Bookings.dart';
import 'package:fickle_flight/screens/Explore.dart';
import 'package:fickle_flight/screens/Offers.dart';
import 'package:fickle_flight/screens/Profile.dart';
import 'package:fickle_flight/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search1 extends StatefulWidget {
  const Search1({super.key});

  State<Search1> createState() => _Search_1();
}

class _Search_1 extends State<Search1> {
  int selectedindex = 0;
  List pages = [
    ExploreView(),
    Bookings(),
    SearchPage(),
    Offers(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Search Flight"),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      //   centerTitle: true,
      //   elevation: 1.0,
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.arrow_back),
      //   ),
      // ),
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        currentIndex: selectedindex,
        iconSize: 25,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        //unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              label: "Explore", icon: Icon(Icons.shopping_bag_outlined)),
          BottomNavigationBarItem(
              label: "bookings", icon: Icon(Icons.location_on_outlined)),
          BottomNavigationBarItem(
              label: "Search", icon: Icon(Icons.airplanemode_on_rounded)),
          BottomNavigationBarItem(
              label: "Offers", icon: Icon(Icons.discount_outlined)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.person_2_outlined)),
        ],
      ),
    );
  }
}
