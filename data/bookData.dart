import 'package:flutter/cupertino.dart';
import 'package:mdi/mdi.dart';

class Category {
  IconData icon;
  String text;

  Category({this.icon, this.text});
}

List<Category> category = [
  Category(
    icon: Mdi.bat,
    text: 'General',
  ),
  Category(
    icon: Mdi.fire,
    text: 'Science',
  ),
  Category(
    icon: Mdi.spa,
    text: 'Plants',
  ),
];

class Books {
  String img;
  Color color;
  Books({this.img,this.color});
}

List<Books> books = [
  Books(
    img: 'assets/book1.jpg',
    color: Color(0xff22c8bA),
  ),
  Books(
    img: 'assets/book2.jpg',
    color: Color(0xffe24443),
  ),
  Books(
    img: 'assets/book3.jpg',
    color: Color(0xff90b0d5),
  ),
];
