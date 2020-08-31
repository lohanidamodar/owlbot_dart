part of owlbot_dart;

///
/// An object the serializes the JSON definitions returned by owlbot API
///
class OwlBotDefinition {
  /// [type] of the [word] for which the definition is received
  /// [type] can be "noun", "verb", ...
  String type;

  /// Definition or the meaning for the [word]
  String definition;

  /// Example usage
  String example;

  /// Image url for the word, can be null
  String imageUrl;

  /// Emoji url for the [word], can be null
  String emoji;

  OwlBotDefinition._(
      {this.type, this.definition, this.example, this.imageUrl, this.emoji});

  factory OwlBotDefinition._fromJson(Map<String, dynamic> json) {
    return OwlBotDefinition._(
      type: json['type'],
      definition: json['definition'],
      example: json['example'],
      imageUrl: json['image_url'],
      emoji: json['emoji'],
    );
  }
}
