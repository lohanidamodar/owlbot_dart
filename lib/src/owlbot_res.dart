part of owlbot_dart;

///
/// An object the serializes the JSON response returned by owlbot API
///
class OwlBotResponse {
  /// List of definitions for the [word]
  List<OwlBotDefinition>? definitions;

  /// The [word] for which the definition was loaded
  String? word;

  /// Pronounciation for the [word]
  String? pronunciation;

  OwlBotResponse._({this.definitions, this.word, this.pronunciation});

  /// Create a [OwlBotResponse] object from json returned by the API
  factory OwlBotResponse.fromJson(Map<String, dynamic> json) {
    return OwlBotResponse._(
      definitions: (json['definitions'] != null)
          ? List<OwlBotDefinition>.from(
              json['definitions'].map((v) => OwlBotDefinition.fromJson(v)))
          : null,
      word: json['word'],
      pronunciation: json['pronunciation'],
    );
  }

  /// Returns a [Map<String,dynamic>] from [OwlBotResponse] object
  Map<String, dynamic> toJson() {
    return {
      "definitions": definitions?.map((e) => e.toJson()).toList(),
      "word": word,
      "pronunciation": pronunciation,
    };
  }
}
