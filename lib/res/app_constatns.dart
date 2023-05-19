import 'package:flutter/widgets.dart';

class AppConstants {
  // Margin Constants
  static const double smallMargin = 8.0;
  static const double mediumMargin = 16.0;
  static const double largeMargin = 24.0;
  static const double extraLargeMargin = 32.0;

  // Padding Constants
  static const double smallPadding = 8.0;
  static const double mediumPadding = 16.0;
  static const double largePadding = 24.0;
  static const double extraLargePadding = 32.0;

  // Utility Methods
  static EdgeInsetsGeometry marginAll(double margin) {
    return EdgeInsets.all(margin);
  }

  static EdgeInsetsGeometry marginTop(double margin) {
    return EdgeInsets.only(top: margin);
  }

  static EdgeInsetsGeometry marginBottom(double margin) {
    return EdgeInsets.only(bottom: margin);
  }

  static EdgeInsetsGeometry marginLeft(double margin) {
    return EdgeInsets.only(left: margin);
  }

  static EdgeInsetsGeometry marginRight(double margin) {
    return EdgeInsets.only(right: margin);
  }

  static EdgeInsetsGeometry marginSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  static EdgeInsetsGeometry paddingAll(double padding) {
    return EdgeInsets.all(padding);
  }

  static EdgeInsetsGeometry paddingTop(double padding) {
    return EdgeInsets.only(top: padding);
  }

  static EdgeInsetsGeometry paddingBottom(double padding) {
    return EdgeInsets.only(bottom: padding);
  }

  static EdgeInsetsGeometry paddingLeft(double padding) {
    return EdgeInsets.only(left: padding);
  }

  static EdgeInsetsGeometry paddingRight(double padding) {
    return EdgeInsets.only(right: padding);
  }

  static EdgeInsetsGeometry paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }
}
