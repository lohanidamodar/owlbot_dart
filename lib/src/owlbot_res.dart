part of owlbot_dart;

///
/// An object the serializes the JSON response returned by owlbot API
///
class OwlBotResponse {
  /// List of definitions for the [word]
  List<OwlBotDefinition> definitions;

  /// The [word] for which the definition was loaded
  String word;

  /// Pronounciation for the [word]
  String pronunciation;

  OwlBotResponse._({this.definitions, this.word, this.pronunciation});

  factory OwlBotResponse._fromJson(Map<String, dynamic> json) {
    return OwlBotResponse._(
      definitions: (json['definitions'] != null)
          ? List<OwlBotDefinition>.from(
              json['definitions'].map((v) => OwlBotDefinition._fromJson(v)))
          : null,
      word: json['word'],
      pronunciation: json['pronunciation'],
    );
  }
}
