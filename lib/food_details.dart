import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int productQty = 1;
  double prdctprice = 250;

  @override
  Widget build(BuildContext context) {
    double totalprice = prdctprice * productQty;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepOrange,
                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""))),
                  )),
                  Positioned(
                      left: 20,
                      top: 30,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.10,
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white54,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      )),
                  Positioned(
                      right: 20,
                      top: 30,
                      child: Container(
                        child: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.white54,
                          size: 20,
                        ),
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6)),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wagyu A5 Rare hot",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        RatingTxt("4.3", 15),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        RatingTxt("[342 Reviews]", 14),
                        Expanded(child: Container()),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      productQty <= 1 ? 1 : productQty--;
                                    });
                                  },
                                  child: increase_Decrease_Button(
                                    Iconsax.minus,
                                    productQty == 1
                                        ? Colors.white60
                                        : Colors.white,
                                  )),
                              Container(
                                height: 20,
                                width: productQty <= 99
                                    ? (productQty <= 9 ? 12 : 20)
                                    : 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: FittedBox(
                                  child: Text(
                                    "$productQty",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      productQty++;
                                    });
                                  },
                                  child: increase_Decrease_Button(
                                      Icons.add, Colors.white)),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    ReadMoreText(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English.",
                      trimMode: TrimMode.Line,
                      textAlign: TextAlign.justify,
                      trimLines: 3,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      moreStyle: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                      ),
                      lessStyle: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                      ),
                    ),
                    // Text("It is a long established fact that a reader will be"
                    //     "distracted by the readable content of a page when looking at its layout."
                    //     "The point of using Lorem Ipsum is that it has a more-or-less normal distribution"
                    //     "of letters, as opposed to using  making it look like readable English. "),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Ingredients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,

                      // color: Colors.green,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 15,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 0.5, offset: Offset(0, 0.7))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    "\$ $totalprice",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Check Out",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container increase_Decrease_Button(IconData icons, Color clrs) {
    return Container(
      height: 23,
      width: 23,
      decoration:
          BoxDecoration(color: clrs, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Icon(
        icons,
        size: 20,
      )),
    );
  }

  RatingTxt(String txt, int fsize) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: fsize == 15 ? Colors.black : Colors.grey),
    );
  }
}
