import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          image: AssetImage("images/$imageName"),
        ),
      ),
      SizedBox(height: 10),
      Text(
        "برای 14 آبان $title سیگنال خرید",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "فروش روی 120560",
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.price_check,
            size: 25,
            color: Colors.red,
          ),
          SizedBox(width: 20),
          Text(
            "خرید روی 120365",
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.green,
          ),
        ],
      ),
      SizedBox(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
