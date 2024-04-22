// ignore_for_file: prefer_collection_literals

class Quotes {
  String? text;
  String? from;

  Quotes({this.text, this.from});

  Quotes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['text'] = text;
    data['from'] = from;
    return data;
  }
}
