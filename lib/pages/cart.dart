import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
    return Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(products[0]))
                ),

              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Name',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',

                    ),),
                    Text('\$180.0',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',

                    ),)
                  ],
                ),
              ),
              const Text('x 2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        )
    );
  }
}
