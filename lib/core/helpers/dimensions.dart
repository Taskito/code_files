import 'package:flutter/material.dart';

class Dimensions{
  static double height = 0;
  static double width = 0;
  static double statusBarHeight = 0;
  static void setDimensions(BuildContext context){
  statusBarHeight = MediaQuery.of(context).padding.top;
  height = MediaQuery.of(context).size.height-statusBarHeight;
  width = MediaQuery.of(context).size.width;
  }
  static double getHeight(double percentage) {
    return height * percentage;
  }
  static double getWidth(double precentage){
    return width * precentage;
  }
  static double getStatusBarHeight(){
    return statusBarHeight;
  }
}

