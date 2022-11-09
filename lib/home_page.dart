import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title:const Text("My Cart",style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body:ListView.builder(
        itemCount: 15,


        itemBuilder: (BuildContext context, int index) {


          return productCard();



          },


      )
    );
  }
  productCard(){
    return   Container(

      child: Column(
        children: [
          Row(
            children: [
              Image.network("https://media.gettyimages.com/photos/classical-cocacola-bottle-picture-id157726102?s=612x612https://media.istockphoto.com/photos/cocacola-classic-in-a-glass-bottle-picture-id499208007?k=20&m=499208007&s=612x612&w=0&h=ZGZi6HI8himQzfsWxH9Ak3CU2zFSGK4gyzAHnRLw7kY=",
                height: 120.0, width: 80.0,


              ),
              Column(
                children:  [
                  Text('Green Burqa with Hijab'),
                  Text('* * * * * ( 10 Review'),
                  SizedBox(height: 15.0,),
                  Text("৳17,000"),
                  Row(
                    children: [
                      Text("Quantity"),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(

                            border: Border.all(
                              // color: Colors.red,
                              width: 1.0,
                            )),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){
                                setState((){

                                  count++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                              ),



                            ),
                            Text("$count"),
                            IconButton(
                              onPressed: (){
                                setState((){
                                  count--;
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
              IconButton(onPressed: (){


              }, icon: const Icon(Icons.delete,color: Colors.red,size: 40.0,))



            ],
          ),
          const Divider(thickness: 1.0,)
        ],
      ),

    );



  }
}


