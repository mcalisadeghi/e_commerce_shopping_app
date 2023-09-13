import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final List<String> imageList = <String>[
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 430,
                    autoPlay: true,
                    imagesLink: imageList,
                    isAssets: true,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'warm zipper',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Hooded Jacket',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\$300.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(
                          0xFFDB3022,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
