import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  double sh(double value) => MediaQuery.of(this).size.height * value;
  double sw(double value) => MediaQuery.of(this).size.width * value;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;
}
