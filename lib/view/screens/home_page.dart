// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/retry.dart';
import 'package:motivational_quotes_app/model/quotes_model.dart';
import 'package:motivational_quotes_app/view/resources/color.dart';
import 'package:motivational_quotes_app/view_model/repository/quotes_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Quotes> quotesList = [];

  @override
  void initState() {
    fetchQuotes();
    super.initState();
  }

  fetchQuotes() {
    QuotesViewModel.fetchQuotes().then((value) => quotesList = value);
    setState(() {});
  }

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
            itemCount: quotesList.length,
            itemBuilder: (context, index) {
              return quotesList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      quotesList[index].text.toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        "- ${quotesList[index].from}",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: pColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    );
            }));
  }
}
