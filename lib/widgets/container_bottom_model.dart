import 'package:flutter/material.dart';

  class ContainerBottomModel extends StatelessWidget {

    late final Color? bgColor;
    late final double? containerWidth;
    late final String itext;

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 60,
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
      );
    }
  }
