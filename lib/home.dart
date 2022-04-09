// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dance_styles/login.dart';
import 'package:dance_styles/dance_home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 178, 212, 223),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 400,
                height: 515,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(
                        "images/dance_home.jpg",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 10.0,
                          blurRadius: 30.0),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Explore Sri Lankan Dancing Styles",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 244, 248),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 10.0,
                          blurRadius: 30.0),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Bottom Bar Buttons
                    //Home Button
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => List()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 32.0),
                        child: Image(
                          image: AssetImage("images/home.png"),
                          width: 32.0,
                          height: 32.0,
                        ),
                      ),
                    ),

                    // Search Button

                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 32.0),
                      child: Image(
                        image: AssetImage("images/search.png"),
                        width: 32.0,
                        height: 32.0,
                      ),
                    ),

                    //Cart Button

                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 32.0,
                        ),
                        child: Image(
                          image: AssetImage("images/cart.png"),
                          width: 32.0,
                          height: 32.0,
                        ),
                      ),
                    ),

                    //Saved Button

                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 32.0),
                      child: Image(
                        image: AssetImage("images/save.png"),
                        width: 32.0,
                        height: 32.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
