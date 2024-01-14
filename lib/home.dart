import 'package:flutter/material.dart';
import 'package:practice/pages/cart.dart';
import 'package:practice/pages/feedback.dart';
import 'package:badges/badges.dart' as badges;
import 'package:practice/widget/carousel.dart';
import 'package:practice/widget/product_slider.dart';
import 'package:practice/widget/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List products = [
    'assets/images/x1.jpg',
    'assets/images/x2.jpg',
    'assets/images/x3.jpg',
    'assets/images/x4.jpg',
    'assets/images/x5.jpg',
    'assets/images/x6.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'E-Commerce',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                    child: Text(
                  'Home',
                )),
                Tab(
                    child: badges.Badge(
                      badgeContent: Text('2'),
                      child: Text(
                        'Cart',
                      ),
                    )
                ),
                Tab(
                    child: Text(
                  'FeedBack',
                )),
              ]),
        ),
        body: const TabBarView(children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Carousol(),
                  SizedBox(height: 20),
                  ProductSlider(),
                  SizedBox(height: 20),
                  Category()
                ],
              ),
            ),
          ),
          //cart
          Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Cart(),
                  Cart(),

                ],
              ),
            ),
          ),
          //feedback
          Padding(
            padding: EdgeInsets.all(20),
            child: FeedBack(),
          ),
        ]),
      ),
    );
  }
}


