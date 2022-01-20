// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget OneProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/piza2.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Chicken Piza',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    'Rs-400',
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text(
                      'ADD +',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xffa5d6af),
            child: Icon(Icons.search, size: 14, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xffa5d6af),
              child: Icon(Icons.shopping_cart, size: 14, color: Colors.black),
            ),
          ),
        ],
        backgroundColor: Color(0xFFFF9800),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/burger.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      //  color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  // bottomLeft: Radius.circular(30),
                                ),
                              ),
                              child: Text(
                                "HUNGER",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyanAccent,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 3,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '25 % off',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On Burgers',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'piza',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chowmin',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                  OneProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
