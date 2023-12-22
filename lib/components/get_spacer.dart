import 'package:flutter/material.dart';

class getHorizontalSpace extends StatelessWidget {
  double width;
  getHorizontalSpace({
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class getVerticalSpace extends StatelessWidget {
  double height;
  getVerticalSpace({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
