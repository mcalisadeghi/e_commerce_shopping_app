import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/product_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> tabs = [
    'all',
    'Category',
    'top',
    'recommended',
  ];
  final List<String> imageList = <String>[
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];
  final List productTitles = [
    'warm zipper',
    'kintted woo',
    'zipper win',
    'child win',
  ];
  final List prices = [
    '\$300',
    '\$650',
    '\$50',
    '\$100',
  ];
  final List reviews = [
    '54',
    '120',
    '542',
    '547',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 115,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(
                        5,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(
                          0.05,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefix: Icon(
                            Icons.search,
                            color: Color(
                              0xFFDB3022,
                            ),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            'Find you product',
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(
                          0.05,
                        ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color(
                            0xFFDB3022,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFFDB3022,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/freed.png',
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FittedBox(
                        child: Text(
                          tabs[index],
                          style: const TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.red,
                  height: 300,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          right: 15,
                        ),
                        // color: Colors.red,
                        height: 180,
                        child: ListView.builder(
                          itemCount: imageList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 330,
                              color: Colors.red,
                              margin: const EdgeInsets.only(
                                right: 15,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Stack(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen(),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            child: Image.asset(
                                              imageList[index],
                                              fit: BoxFit.cover,
                                              height: 180,
                                              width: 180,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 10,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.favorite,
                                                color: Color(
                                                  0xFFDB3022,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          productTitles[index],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const SizedBox(
                                          width: 120,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                                            maxLines: 7,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 25,
                                            ),
                                            Text(
                                              '(${prices[index]})',
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Newest product',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GridView.builder(
                    itemCount: productTitles.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      // crossAxisSpacing: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 220,
                              child: Stack(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductScreen(),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      child: Image.asset(
                                        imageList[index],
                                        width: 180,
                                        height: 220,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(
                                            0xFFDB3022,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.star,
                                  size: 25,
                                ),
                                Text(
                                  '(${prices[index]})',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
