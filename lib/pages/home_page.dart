import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Project";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dripping in Dazzle"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
