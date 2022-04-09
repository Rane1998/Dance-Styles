// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomTab extends StatelessWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Bottom Tabs"));
  }
}

class BottomTabButton extends StatelessWidget {
  const BottomTabButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage("images/home.png"),
      ),
    );
  }
}
