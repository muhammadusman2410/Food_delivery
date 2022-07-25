import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    List tabName = [
      "Reccomand",
      "Usman",
      "Nomi",
      "zeshan",
      "Bilal",
    ];

    // List<String> imgList = [
    //   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    //   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    //   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    //   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    // ];
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(backgroundColor: Colors.red,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart_checkout_outlined,
                    size: 30,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 25),
              //   child: Container(
              //     height: 40,
              //     decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(0.2),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     child: TabBar(
              //         isScrollable: true,
              //         controller: _tabcontroller,
              //         labelColor: Colors.white,
              //         unselectedLabelColor: Colors.grey,
              //         indicator: BoxDecoration(
              //           border: Border.all(color: Colors.red),
              //           borderRadius: BorderRadius.circular(30),
              //           color: Colors.deepOrange,
              //         ),
              //         tabs: [
              //           Tab(
              //             text: tabName[0].toString(),
              //           ),
              //           Tab(
              //             text: tabName[1].toString(),
              //           ),
              //           Tab(
              //             text: "Reccomand",
              //           ),
              //           Tab(
              //             text: "Reccomand",
              // //           ),
              // //         ]),
              // //   ),
              // // ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 25, top: 30, bottom: 5),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.4,
              //     child: TabBarView(controller: _tabcontroller, children: [
              //       Stack(
              //         children: [
              //           Positioned(
              //             child: Container(
              //               height: MediaQuery.of(context).size.height * 0.4,
              //               child: ListView.separated(
              //                 scrollDirection: Axis.horizontal,
              //                 itemBuilder: (BuildContext context, int index) {
              //                   return Container(
              //                     width:
              //                         MediaQuery.of(context).size.width * 0.7,
              //                     decoration: BoxDecoration(
              //                         image: DecorationImage(
              //                             image: NetworkImage(imgList[index]),
              //                             fit: BoxFit.cover),
              //                         color: Colors.deepOrange,
              //                         borderRadius: BorderRadius.circular(10)),
              //                   );
              //                 },
              //                 itemCount: imgList.length,
              //                 separatorBuilder:
              //                     (BuildContext context, int index) => SizedBox(
              //                   width: 20,
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Positioned(
              //             top: 15,
              //             left: 15,
              //               child: Container(

              //                 child: ListView.builder(
              //                   scrollDirection: Axis.horizontal,
              //                   itemBuilder: (BuildContext context, int index) { return Container(
              //                                           height: 30,
              //                                           width: 80,
              //                                           decoration: BoxDecoration(
              //                     color: Colors.grey.withOpacity(0.7)),
              //                                         ); },
              //                   itemCount: imgList.length,
                               
                                
              //                 ),
              //               )),
              //         ],
              //       ),

              //       // Container(
              //       //   child: ListView.separated(
              //       //     itemBuilder: (BuildContext context, int index) {
              //       //       return Container(
              //       //         // width: MediaQuery.of(context).size.width * 0.5,
              //       //         width: 50,
              //       //         decoration: BoxDecoration(

              //       //             borderRadius: BorderRadius.circular(10),
              //       //             image: DecorationImage(
              //       //                 fit: BoxFit.cover,
              //       //                 image: NetworkImage(imgList[index]))),
              //       //       );
              //       //     },
              //       //     separatorBuilder: (BuildContext context, int index) =>
              //       //         SizedBox(
              //       //       width: 20,
              //       //     ),
              //       //     itemCount: imgList.length,
              //       //   ),
              //       // ),
              //       Text("data"),
              //       Text("data"),
              //       Text("data"),
              //     ]),
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 25, top: 10, bottom: 5),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.05,
              //     child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           decoration: BoxDecoration(
              //               color: Colors.deepOrange,
              //               borderRadius: BorderRadius.circular(30)),
              //           child: Center(
              //               child: Padding(
              //             padding: const EdgeInsets.only(left: 20, right: 20),
              //             child: FittedBox(
              //               child: Text(
              //                 tabName[index].toString(),
              //                 style: TextStyle(
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //             ),
              //           )),
              //         );
              //       },
              //       itemCount: tabName.length,
              //       separatorBuilder: (BuildContext context, int index) =>
              //           SizedBox(
              //         width: 15,
              //       ),
              //     ),
              //   ),
              // ),

              // CarouselSlider.builder(
              //   options: CarouselOptions(viewportFraction: 1),
              //   itemCount: 4,
              //   itemBuilder: (BuildContext context, int index, int realIndex) {
              //     return Container(
              //       height: 200,
              //       width: 200,
              //       decoration: BoxDecoration(
              //           color: Colors.pink,
              //           borderRadius: BorderRadius.circular(10)),
              //     );
              //   },
              // ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 25, top: 20, bottom: 5),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.3,
              //     child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width * 0.5,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(image: NetworkImage(imgList[index]),fit: BoxFit.cover),
              //               color: Colors.deepOrange,
              //               borderRadius: BorderRadius.circular(10)),
              //         );
              //       },
              //       itemCount: imgList.length,
              //       separatorBuilder: (BuildContext context, int index) =>
              //           SizedBox(
              //         width: 10,
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Text(
                      "Near you!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "See Map",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
