import 'package:flutter/material.dart';

class HomeCategories {
  final String image;
  final String title;
  final Color color;

  HomeCategories(
      {required this.image, required this.title, required this.color});
}

List<HomeCategories> homeCategories = [
  HomeCategories(
      image: "assets/doctors_home_categoriy.png",
      title: "Doctors’ data ",
      color: const Color(0xff70C1D4)),
  HomeCategories(
      image: "assets/student_home_categoiry.png",
      title: "Students’ data",
      color: const Color(0xff9185A2)),
  HomeCategories(
      image: "assets/doctors_home_categoriy.png",
      title: "Doctors’ data ",
      color: const Color(0xffD4A070)),
  HomeCategories(
      image: "assets/sessions_home_categoriy.png",
      title: "Sessions’ data",
      color: const Color(0xffE8B701)),
];
