import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:abc_app/models/product_details.dart';

// ignore: camel_case_types
class BuyerAuction extends StatelessWidget {
  BuyerAuction({Key? key}) : super(key: key);

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  double? startprice = 10;
  double? highestbid = 50;
  String? doller = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white10,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Product Auction',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print('hiiii');
                    },
                    child: Container(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('hiiii');
                    },
                    child: Container(
                      child: Icon(Icons.share),
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: imgList
                  .map(
                    (image) => Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                  .toList(),

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 300),
                viewportFraction: 0.8,
              ),
            ),
            // Card(
            //   child: Padding(
            //       padding: const EdgeInsets.all(5.0),
            //       child: Row(
            //         children: [
            //           Column(
            //             children: [
            //               Container(
            //                 alignment: Alignment.centerLeft,
            //                 child: const Text(
            //                   'Motercycle Helmet',
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w700,
            //                   ),
            //                 ),
            //               ),
            //               const SizedBox(
            //                 height: 10.0,
            //               ),
            //               Container(
            //                 alignment: Alignment.bottomLeft,
            //                 child: Text(
            //                   'Start Bid : $startprice',
            //                   style: const TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.w500,
            //                   ),
            //                 ),
            //               ),
            //               const SizedBox(
            //                 height: 10,
            //               ),
            //               Container(
            //                 alignment: Alignment.centerLeft,
            //                 child: Text(
            //                   'Highest Bid : $highestbid',
            //                   style: const TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.w500,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 200,
            //             width: 200,
            //             child: Container(
            //               color: Colors.red,
            //               alignment: Alignment.center,
            //               child: Text(
            //                 "\$$startprice",
            //                 style: const TextStyle(
            //                   fontSize: 50,
            //                   fontWeight: FontWeight.w900,
            //                 ),
            //               ),
            //             ),
            //           )
            //         ],
            //       )),
            // )
            Card(
                child: ListTile(
              title: Text(ProductDetails.product.productName),
              subtitle: Text(
                  "Start Bidding : \$${ProductDetails.product.startBid.toString()}"),
              trailing:
                  Text('\$${ProductDetails.product.highestBid.toString()}'),
            )),
          ],
        ),
      ),
    );
  }
}
