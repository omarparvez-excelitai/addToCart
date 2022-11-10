import 'package:flutter/material.dart';

import '../Model/product_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<ProductModel> productList=[

    (ProductModel("Shirt", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 660, 1, 15)),
    (ProductModel("Paijama", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 850, 1, 25)),
    (ProductModel("T-Shirt", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 250, 1, 20)),
    (ProductModel("Tupi", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 120, 1, 5)),
    (ProductModel("Shoe", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 1200, 1, 8)),
    (ProductModel("Watch", "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg", 700, 1, 96)),


  ];
  // increment(){
  //
  // }
  // final items = List.generate(15, (i) {
  //   var count = 1;
  //   return Container(
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Image.network(
  //               "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg",
  //               height: 120.0,
  //               width: 80.0,
  //             ),
  //             Column(
  //               children: [
  //                 Text('Green Burqa with Hijab'),
  //                 Text('* * * * * ( 10 Review )'),
  //                 SizedBox(
  //                   height: 15.0,
  //                 ),
  //                 Text("৳17,000"),
  //                 Row(
  //                   children: [
  //                     Text("Quantity"),
  //                     SizedBox(
  //                       width: 10,
  //                     ),
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border.all(
  //                             // color: Colors.red,
  //                             width: 1.0,
  //                           )),
  //                       child: Row(
  //                         children: [
  //                           IconButton(
  //                             onPressed: () {
  //                               setState(() {
  //                                 count++;
  //                               });
  //                             },
  //                             icon: const Icon(
  //                               Icons.add,
  //                             ),
  //                           ),
  //                           Text("$count"),
  //                           IconButton(
  //                             onPressed: () {
  //                               setState(() {
  //                                 count--;
  //                               });
  //                             },
  //                             icon: const Icon(
  //                               Icons.remove,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //             const Spacer(),
  //             IconButton(
  //                 onPressed: () {},
  //                 icon: const Icon(
  //                   Icons.delete,
  //                   color: Colors.red,
  //                   size: 40.0,
  //                 ))
  //           ],
  //         ),
  //         const Divider(
  //           thickness: 1.0,
  //         )
  //       ],
  //     ),
  //   );
  //
  // });
  //var count = 1;
  List<int> countProduct=[1,1,1,1,1,1,1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "My Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: productList.length,
        //  itemCount: countProduct.length,
          itemBuilder: (BuildContext context, int index) {
            return productCard(index);
          },
        ));
  }

  productCard(int index) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                productList[index].image,
                height: 120.0,
                width: 80.0,
              ),
              Column(
                children: [
                  Text(productList[index].name),
                  Text(productList[index].review.toString()),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(productList[index].price.toString()),
                  Row(
                    children: [
                      Text("Quantity"),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          // color: Colors.red,
                          width: 1.0,
                        )),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  // count++;
                                 // countProduct[index]++;
                                  productList[index].quantity++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                            Text("${productList[index].quantity}"),
                            //Text("${countProduct[index]}"),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  productList[index].quantity--;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {

                    setState(() {
                      productList.removeAt(index);
                    });
                    // productList.removeAt(index);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 40.0,
                  ))
            ],
          ),
          const Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
