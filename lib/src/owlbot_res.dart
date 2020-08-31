part of owlbot_dart;

class OwlBotResponse {
  List<OwlBotDefinition> definitions;
  String word;
  String pronunciation;

  OwlBotResponse({this.definitions, this.word, this.pronunciation});

  factory OwlBotResponse.fromJson(Map<String, dynamic> json) {
    return OwlBotResponse(
      definitions: (json['definitions'] != null)
          ? List<OwlBotDefinition>.from(
              json['definitions'].map((v) => OwlBotDefinition.fromJson(v)))
          : null,
      word: json['word'],
      pronunciation: json['pronunciation'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.definitions != null) {
      data['definitions'] = this.definitions.map((v) => v.toJson()).toList();
    }
    data['word'] = this.word;
    data['pronunciation'] = this.pronunciation;
    return data;
  }
}
