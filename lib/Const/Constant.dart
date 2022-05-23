import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenW;
  static double? screenH;
  static double? blockH;
  static double? blockV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenW = _mediaQueryData!.size.width;
    screenH = _mediaQueryData!.size.height;
    blockH = screenW! / 100;
    blockV = screenH! / 100;
  }
}

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your Finances",
    image: "assets/images/finplan.png",
    desc: "Check All Your Spending In One App And Invest The Spare",
  ),
  OnboardingContents(
    title: "Earn A Fixed Interest Of 9% Every year",
    image: "assets/images/moneytree.png",
    desc:
    "Beat The Inflation And Grow Your Money To Complete Your Needs",
  ),
  OnboardingContents(
    title: "Becoming Financially Independent With Us",
    image: "assets/images/mansit.png",
    desc:
    "Free Financial Learning Resources. One Stop Solution For Modern Youth",
  ),
];