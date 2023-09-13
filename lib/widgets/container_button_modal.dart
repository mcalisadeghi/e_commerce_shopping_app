import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
  final Color? bgColor;
  final double containerwidth;
  final String itext;

  const ContainerButtonModel({
    super.key,
    this.bgColor,
    required this.containerwidth,
    required this.itext,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Center(
        child: Text(
          itext,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
