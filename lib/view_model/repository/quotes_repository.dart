import 'dart:convert';

import 'package:motivational_quotes_app/model/quotes_model.dart';
import 'package:http/http.dart' as http;

class QuotesViewModel {
  static Future<List<Quotes>> fetchQuotes() async {
    var url = 'https://jsonguide.technologychannel.org/quotes.json';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<Quotes> dataList = data.map((e) => Quotes.fromJson(e)).toList();
      return dataList;
    } else {
      throw Exception("Error");
    }
  }
}
