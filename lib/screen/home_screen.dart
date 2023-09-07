import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 115,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
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
                          10,
                        ),
                      ),
                      child: Center(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
