import 'package:flutter/material.dart';
//catergory
class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List products = [
    'assets/images/x1.jpg',
    'assets/images/x2.jpg',
    'assets/images/x3.jpg',
    'assets/images/x4.jpg',
    'assets/images/x5.jpg',
    'assets/images/x6.jpg',

  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
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
        Container(
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            // padding: const EdgeInsets.symmetric(horizontal: 30),
            unselectedLabelColor: Colors.black,
            dividerColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(50)),
            tabs: [
              Tab(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: const Align(
                        alignment: Alignment.center, child: Text('All'))),
              ),
              Tab(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: const Align(
                        alignment: Alignment.center, child: Text('Men'))),
              ),
              Tab(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: const Align(
                        alignment: Alignment.center, child: Text('Women'))),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.40,
          child: TabBarView(
            controller: _tabController,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[0])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[1])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[2])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[3])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[4])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1)),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                showDialog(context: context, builder: (context){
                                  return Container(
                                    child: AlertDialog(
                                      title: const Center(child: Text('Are You Sure',style: TextStyle(fontFamily: 'Poppins'),)),
                                      alignment: Alignment.center,
                                      actions: [
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 80,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: const Center(child: Text('Ok',style: TextStyle(color: Colors.white),)),
                                              ),
                                              onTap: (){
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    const SnackBar(
                                                      content: Text("Added To Cart"),
                                                    )
                                                );
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                              }, icon: const Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(products[5])),
                          ),
                          const Text(
                            'Prouduct Name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            '\$180.0',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// catergory end
