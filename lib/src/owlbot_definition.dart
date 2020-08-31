part of owlbot_dart;

class OwlBotDefinition {
  String type;
  String definition;
  String example;
  Null imageUrl;
  Null emoji;

  OwlBotDefinition(
      {this.type, this.definition, this.example, this.imageUrl, this.emoji});

  factory OwlBotDefinition.fromJson(Map<String, dynamic> json) {
    return OwlBotDefinition(
      type: json['type'],
      definition: json['definition'],
      example: json['example'],
      imageUrl: json['image_url'],
      emoji: json['emoji'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['definition'] = this.definition;
    data['example'] = this.example;
    data['image_url'] = this.imageUrl;
    data['emoji'] = this.emoji;
    return data;
  }
}
