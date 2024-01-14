import 'package:flutter/material.dart';

// product slider
class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  List products = [
    'assets/images/product-1.jpg',
    'assets/images/product-2.jpg',
    'assets/images/product-3.jpg',
    'assets/images/product-4.jpg',
    'assets/images/product-5.jpg',
    'assets/images/product-6.jpg',
    'assets/images/product-7.jpg',
    'assets/images/product-8.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Products',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins'),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(products[index]), fit: BoxFit.cover),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
// product slider end
