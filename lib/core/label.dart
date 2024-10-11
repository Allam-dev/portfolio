import 'package:flutter/material.dart';
import 'package:portfolio/core/extenstions.dart';

class Label extends StatelessWidget {
  final String data;
  final TextStyle? style;
  const Label(this.data, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: context.isDesktop ? TextAlign.left : TextAlign.center,
      style: style,
    );
  }
}
