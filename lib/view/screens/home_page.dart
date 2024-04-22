// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:http/retry.dart';
import 'package:motivational_quotes_app/view/resources/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotes for the day",
        ),
        centerTitle: true,
        backgroundColor: pColor,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Time is money",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
